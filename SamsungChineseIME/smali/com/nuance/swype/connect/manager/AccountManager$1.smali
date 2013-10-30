.class Lcom/nuance/swype/connect/manager/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/AccountManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/AccountManager;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/AccountManager$1;->this$0:Lcom/nuance/swype/connect/manager/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "[AccountManager] onInvalidated"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager$1;->this$0:Lcom/nuance/swype/connect/manager/AccountManager;

    #calls: Lcom/nuance/swype/connect/manager/AccountManager;->sendAccount()V
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/AccountManager;->access$000(Lcom/nuance/swype/connect/manager/AccountManager;)V

    .line 144
    return-void
.end method

.method public onLinked()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
