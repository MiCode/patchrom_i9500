.class Lcom/android/settings_ex/homesync/FileOperationPaste$1;
.super Landroid/os/storage/StorageEventListener;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const v5, 0x7f0912a1

    .line 82
    const-string v2, "HomeSyncFileOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v2, "removed"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    #getter for: Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->access$000(Lcom/android/settings_ex/homesync/FileOperationPaste;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    #getter for: Lcom/android/settings_ex/homesync/FileOperationPaste;->list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->access$100(Lcom/android/settings_ex/homesync/FileOperationPaste;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 90
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
