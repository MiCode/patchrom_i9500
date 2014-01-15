.class Lcom/android/settings_ex/cloud/CloudDialog$6;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cloud/CloudDialog;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    #getter for: Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudDialog;->access$200(Lcom/android/settings_ex/cloud/CloudDialog;)Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog$6;->this$0:Lcom/android/settings_ex/cloud/CloudDialog;

    #getter for: Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudDialog;->access$200(Lcom/android/settings_ex/cloud/CloudDialog;)Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;->onCancelButtonClick()V

    .line 214
    :cond_0
    return-void
.end method
