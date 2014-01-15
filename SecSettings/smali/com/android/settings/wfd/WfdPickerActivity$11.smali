.class Lcom/android/settings_ex/wfd/WfdPickerActivity$11;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->val$mOkButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1768
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/16 v1, 0x17

    .line 1770
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v1, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3002(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1772
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v2, 0x17

    const/4 v3, 0x0

    .line 1774
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    .local v0, temp:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_4

    .line 1778
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_3

    .line 1779
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1785
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1786
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1789
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0904a2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09041b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090699

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2702(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1796
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1781
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1798
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1799
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->val$mOkButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1801
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
