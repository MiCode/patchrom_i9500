.class Lcom/android/settings_ex/DataUsageSummary$6;
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
    .line 1355
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1358
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1361
    .local v2, isAirplaneMode:I
    if-nez v2, :cond_0

    .line 1365
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 1366
    .local v1, dataEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, currentTab:Ljava/lang/String;
    const-string v5, "mobile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1368
    if-eqz v1, :cond_7

    .line 1369
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1370
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1371
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1372
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    .line 1374
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v5

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$702(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1390
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0           #currentTab:Ljava/lang/String;
    .end local v1           #dataEnabled:Z
    :cond_4
    move v1, v4

    .line 1365
    goto :goto_1

    .line 1376
    .restart local v0       #currentTab:Ljava/lang/String;
    .restart local v1       #dataEnabled:Z
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1377
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1378
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    goto :goto_2

    .line 1381
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v5, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_2

    .line 1386
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$6;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_2
.end method
