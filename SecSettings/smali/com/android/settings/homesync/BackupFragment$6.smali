.class Lcom/android/settings_ex/homesync/BackupFragment$6;
.super Lcom/android/settings_ex/homesync/FileOperationPaste;
.source "BackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/homesync/BackupFragment;->startBackup(Lcom/android/settings_ex/homesync/FileOperationProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupFragment;

.field final synthetic val$progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;Ljava/util/ArrayList;Ljava/io/File;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;ILjava/io/File;Lcom/android/settings_ex/homesync/FileOperationProgress;)V
    .locals 9
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 277
    .local p4, x2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupFragment$6;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$6;->val$progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/settings_ex/homesync/FileOperationPaste;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;Ljava/util/ArrayList;Ljava/io/File;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;ILjava/io/File;)V

    return-void
.end method


# virtual methods
.method protected done(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 281
    const-string v0, "BackupFragment"

    const-string v1, "FileOperationPaste.done()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$6;->val$progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0912a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$6;->val$progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 285
    return-void
.end method
