.class Lcom/android/settings_ex/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
