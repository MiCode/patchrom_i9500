.class Lcom/android/settings_ex/DataUsageSummary$9;
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
    .line 1429
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v1, -0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1434
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirmWarning"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1441
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$702(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_0
.end method
