.class Lcom/android/settings_ex/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    #calls: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2900(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$3$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$3$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 396
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #setter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3102(Lcom/android/settings_ex/TrustedCredentialsSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 400
    return-void
.end method
