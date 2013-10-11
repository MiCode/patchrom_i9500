.class Landroid/os/OEMEncryption$3;
.super Landroid/content/BroadcastReceiver;
.source "OEMEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OEMEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/OEMEncryption;


# direct methods
.method constructor <init>(Landroid/os/OEMEncryption;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    const-string v0, "OEMEncryption"

    const-string v1, "Dismissing the notification beacuse SD card is encrypted now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    #getter for: Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/os/OEMEncryption;->access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method
