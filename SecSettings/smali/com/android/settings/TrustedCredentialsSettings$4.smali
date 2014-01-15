.class Lcom/android/settings_ex/TrustedCredentialsSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mHasPaused:Z
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3400(Lcom/android/settings_ex/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mHasPaused:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3402(Lcom/android/settings_ex/TrustedCredentialsSettings;Z)Z

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3100(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3100(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3100(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #setter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3102(Lcom/android/settings_ex/TrustedCredentialsSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3500(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3500(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3500(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #setter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$3502(Lcom/android/settings_ex/TrustedCredentialsSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 464
    :cond_2
    return-void
.end method
