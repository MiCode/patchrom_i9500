.class Lcom/android/settings_ex/deviceinfo/Status$2;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Status$2;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status$2;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    const-string v2, "Result"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings_ex/deviceinfo/Status;->isSysScopeStatus:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/Status;->access$402(Lcom/android/settings_ex/deviceinfo/Status;I)I

    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status$2;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #calls: Lcom/android/settings_ex/deviceinfo/Status;->changeSysScopeStatus()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Status;->access$500(Lcom/android/settings_ex/deviceinfo/Status;)V

    .line 275
    :cond_0
    return-void
.end method
