.class Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->enableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->this$0:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    iput-object p3, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2669
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeoutTask run()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2671
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "URL"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->endURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2672
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Browser_loading_URL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2673
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2674
    const-string v1, "PID"

    iget v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->val$pid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2675
    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;->this$0:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    #getter for: Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->access$5700(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2676
    return-void
.end method
