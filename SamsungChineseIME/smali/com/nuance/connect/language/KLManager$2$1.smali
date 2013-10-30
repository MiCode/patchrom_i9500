.class Lcom/nuance/connect/language/KLManager$2$1;
.super Ljava/lang/Object;
.source "KLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/language/KLManager$2;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/language/KLManager$2;


# direct methods
.method constructor <init>(Lcom/nuance/connect/language/KLManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager$2$1;->this$1:Lcom/nuance/connect/language/KLManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$2$1;->this$1:Lcom/nuance/connect/language/KLManager$2;

    iget-object v1, v1, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #getter for: Lcom/nuance/connect/language/KLManager;->isConnectStopped:Z
    invoke-static {v1}, Lcom/nuance/connect/language/KLManager;->access$300(Lcom/nuance/connect/language/KLManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$2$1;->this$1:Lcom/nuance/connect/language/KLManager$2;

    iget-object v1, v1, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->start()V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Lcom/nuance/connect/language/KLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected restart exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
