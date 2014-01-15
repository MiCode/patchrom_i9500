.class Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;->this$0:Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;

    iput-object p2, p0, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 757
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;->this$0:Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;

    const v3, 0x7f09015e

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 760
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 761
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 762
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 765
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 766
    .local v1, rebootHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1$1;-><init>(Lcom/android/settings_ex/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 776
    return-void
.end method
