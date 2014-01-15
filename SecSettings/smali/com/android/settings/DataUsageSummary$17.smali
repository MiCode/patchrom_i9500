.class Lcom/android/settings_ex/DataUsageSummary$17;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3019
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$17;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3021
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3022
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.settings_ex.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3023
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$17;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v2, 0x0

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3500(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 3025
    :cond_0
    return-void
.end method
