.class Lcom/android/settings_ex/wfd/WfdPickerActivity$14;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xd

    .line 1931
    const-string v0, "WfdPickerActivity"

    const-string v1, "createErrorHandlingDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 1937
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 1941
    :cond_2
    return-void
.end method
