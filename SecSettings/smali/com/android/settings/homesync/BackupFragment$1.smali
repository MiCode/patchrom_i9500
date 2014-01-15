.class Lcom/android/settings_ex/homesync/BackupFragment$1;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 158
    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #calls: Lcom/android/settings_ex/homesync/BackupFragment;->getTotalSelectedSize()J
    invoke-static {v9}, Lcom/android/settings_ex/homesync/BackupFragment;->access$100(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v6

    .line 159
    .local v6, totalSelectedSize:J
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v9}, Lcom/android/settings_ex/homesync/BackupFragment;->access$200(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/os/storage/StorageVolume;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, tmpFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 161
    .local v0, availableSize:J
    cmp-long v9, v6, v0

    if-lez v9, :cond_0

    .line 162
    const v4, 0x7f0912a5

    .line 163
    .local v4, resId:I
    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/homesync/BackupFragment;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 164
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 188
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #resId:I
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v3, Lcom/android/settings_ex/homesync/FileOperationProgress;

    invoke-direct {v3}, Lcom/android/settings_ex/homesync/FileOperationProgress;-><init>()V

    .line 178
    .local v3, progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;
    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 182
    .local v8, transaction:Landroid/app/FragmentTransaction;
    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getId()I

    move-result v9

    const-string v10, "FileOperationProgressFragment"

    invoke-virtual {v8, v9, v3, v10}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 183
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 186
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    .line 187
    iget-object v9, p0, Lcom/android/settings_ex/homesync/BackupFragment$1;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->startBackup(Lcom/android/settings_ex/homesync/FileOperationProgress;)V

    goto :goto_0
.end method
