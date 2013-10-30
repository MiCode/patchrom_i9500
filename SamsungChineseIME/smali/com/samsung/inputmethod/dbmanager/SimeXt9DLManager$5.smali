.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManager()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$500(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$800(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$700(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
