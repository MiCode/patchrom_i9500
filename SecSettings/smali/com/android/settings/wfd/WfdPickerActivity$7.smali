.class Lcom/android/settings_ex/wfd/WfdPickerActivity$7;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2702(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1725
    :cond_1
    return-void
.end method
