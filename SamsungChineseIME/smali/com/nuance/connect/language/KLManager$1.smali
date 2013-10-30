.class Lcom/nuance/connect/language/KLManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/language/KLManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/language/KLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager$1;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager$1;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->onConnectivityChanged()V

    .line 123
    return-void
.end method
