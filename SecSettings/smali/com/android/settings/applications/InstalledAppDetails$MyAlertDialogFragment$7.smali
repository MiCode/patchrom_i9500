.class Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$7;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment$7;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 1565
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$602(Z)Z

    .line 1567
    return-void
.end method
