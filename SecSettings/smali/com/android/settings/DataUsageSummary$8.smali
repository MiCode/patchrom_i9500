.class Lcom/android/settings_ex/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1408
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/16 v2, -0x1

    .line 1412
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1425
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1418
    .local v0, disableAtLimit:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1421
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .line 1417
    .end local v0           #disableAtLimit:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1423
    .restart local v0       #disableAtLimit:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$8;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;J)V

    goto :goto_0
.end method
