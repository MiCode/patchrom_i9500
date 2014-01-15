.class Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;
.super Ljava/lang/Object;
.source "HomeSyncBackupAndRestoreSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 85
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 86
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_2

    .line 87
    const v2, 0x7f0912c1

    .line 88
    .local v2, resId:I
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    #getter for: Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRestoreStartBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->access$000(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)Landroid/widget/Button;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 89
    const v2, 0x7f0912c2

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #resId:I
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "key_request_for"

    const-string v5, "checkaccount"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    #getter for: Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mBackupStartBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->access$100(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)Landroid/widget/Button;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    #getter for: Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRestoreStartBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->access$000(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)Landroid/widget/Button;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;->this$0:Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
