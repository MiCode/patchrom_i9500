.class Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;
.super Landroid/os/CountDownTimer;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->showDelayedProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1072
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    const/4 v1, 0x1

    invoke-static {v1, v2, v2}, Lcom/android/settings_ex/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;)Lcom/android/settings_ex/cloud/CloudDialog;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->access$1102(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1073
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->access$1100(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->access$1100(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$4;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 1079
    return-void
.end method
