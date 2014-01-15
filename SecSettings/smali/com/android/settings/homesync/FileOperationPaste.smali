.class public abstract Lcom/android/settings_ex/homesync/FileOperationPaste;
.super Lcom/android/settings_ex/homesync/FileOperation;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeSyncFileOperation"


# instance fields
.field private context:Landroid/app/Activity;

.field private currentDirectory:Ljava/io/File;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCurrentCopiedSize:J

.field private mEncryptedSourceDir:Ljava/io/File;

.field private mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

.field mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

.field private mRequestType:I

.field public mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mTotalCount:I

.field private mTotalPercentage:I

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;Ljava/util/ArrayList;Ljava/io/File;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;ILjava/io/File;)V
    .locals 6
    .parameter "context"
    .parameter "progressScreen"
    .parameter
    .parameter "currentDirectory"
    .parameter "pasteType"
    .parameter "requestType"
    .parameter "encryptedSourceDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settings_ex/homesync/FileOperationProgress;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;",
            "I",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p6}, Lcom/android/settings_ex/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;I)V

    .line 61
    iput-object v3, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    .line 69
    sget-object v1, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->SkipAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    .line 70
    iput-wide v4, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    .line 71
    iput-wide v4, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    .line 72
    iput v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 73
    iput v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    .line 74
    iput v2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mRequestType:I

    .line 76
    iput-object v3, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    .line 79
    new-instance v1, Lcom/android/settings_ex/homesync/FileOperationPaste$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/homesync/FileOperationPaste$1;-><init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 123
    new-instance v1, Lcom/android/settings_ex/homesync/FileOperationPaste$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/homesync/FileOperationPaste$2;-><init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    .line 105
    iput-object p3, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->list:Ljava/util/ArrayList;

    .line 106
    iput-object p4, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;

    .line 107
    iput-boolean v2, p0, Lcom/android/settings_ex/homesync/FileOperation;->mErrMaxFilePath:Z

    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    .line 109
    iput-object p2, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    .line 110
    iput-object p5, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    .line 111
    iput p6, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mRequestType:I

    .line 112
    iput-object p7, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    .line 114
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 115
    .local v0, sm:Landroid/os/storage/StorageManager;
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 117
    return-void
.end method

.method private CopyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 39
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    const/16 v30, 0x0

    .line 548
    .local v30, from:Ljava/io/FileInputStream;
    const/16 v37, 0x0

    .line 550
    .local v37, to:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_0

    .line 551
    const/4 v3, 0x0

    .line 636
    :goto_0
    return v3

    .line 554
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    const-string v3, "MyFiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CopyFile dst.mkdirs() failed~!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 560
    :cond_2
    :try_start_0
    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 561
    .end local v30           #from:Ljava/io/FileInputStream;
    .local v31, from:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 563
    .end local v37           #to:Ljava/io/FileOutputStream;
    .local v38, to:Ljava/io/FileOutputStream;
    const/16 v3, 0x2000

    :try_start_2
    new-array v0, v3, [B

    move-object/from16 v28, v0

    .line 566
    .local v28, buffer:[B
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v34

    .line 567
    .local v34, length:J
    const-wide/16 v32, 0x0

    .line 568
    .local v32, i:J
    const/16 v27, 0x0

    .line 570
    .local v27, baseValue:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_3

    .line 571
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    .line 578
    :cond_3
    const-string v3, "HomeSyncFileOperation"

    const-string v4, "copyFile 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_2
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v29

    .local v29, bytesRead:I
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_c

    .line 580
    const-string v3, "HomeSyncFileOperation"

    const-string v4, "copyFile 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_9

    .line 582
    if-eqz v31, :cond_4

    .line 583
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V

    .line 584
    :cond_4
    if-eqz v38, :cond_5

    .line 585
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 586
    :cond_5
    const/4 v3, 0x0

    .line 622
    if-eqz v31, :cond_6

    .line 623
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 628
    :cond_6
    if-eqz v38, :cond_7

    .line 629
    :try_start_4
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_7
    :goto_3
    move-object/from16 v37, v38

    .end local v38           #to:Ljava/io/FileOutputStream;
    .restart local v37       #to:Ljava/io/FileOutputStream;
    move-object/from16 v30, v31

    .line 632
    .end local v31           #from:Ljava/io/FileInputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 624
    .end local v30           #from:Ljava/io/FileInputStream;
    .end local v37           #to:Ljava/io/FileOutputStream;
    .restart local v31       #from:Ljava/io/FileInputStream;
    .restart local v38       #to:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 628
    if-eqz v38, :cond_7

    .line 629
    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 630
    :catch_1
    move-exception v4

    goto :goto_3

    .line 627
    :catchall_0
    move-exception v3

    .line 628
    if-eqz v38, :cond_8

    .line 629
    :try_start_6
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 632
    :cond_8
    :goto_4
    throw v3

    .line 589
    :cond_9
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 590
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move/from16 v0, v29

    int-to-long v5, v0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    .line 592
    const-wide/16 v3, 0x2000

    mul-long v3, v3, v32

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v36, v0

    .line 593
    .local v36, statusValue:I
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_b

    .line 594
    const/4 v14, 0x0

    .line 595
    .local v14, notification:Z
    move/from16 v27, v36

    .line 596
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 597
    const-wide/16 v3, 0xa

    rem-long v3, v32, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 598
    const/4 v14, 0x1

    .line 599
    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x2000

    mul-long v8, v8, v32

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v8, v8, v34

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    .line 607
    .end local v14           #notification:Z
    :cond_b
    const-wide/16 v3, 0x1

    add-long v32, v32, v3

    .line 608
    goto/16 :goto_2

    .line 609
    .end local v36           #statusValue:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_d

    .line 610
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 611
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v3, 0x2000

    mul-long v3, v3, v32

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long v3, v3, v34

    long-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v26}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    .line 619
    :cond_d
    invoke-virtual/range {v38 .. v38}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 622
    if-eqz v31, :cond_e

    .line 623
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 628
    :cond_e
    if-eqz v38, :cond_f

    .line 629
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_f
    :goto_5
    move-object/from16 v37, v38

    .end local v38           #to:Ljava/io/FileOutputStream;
    .restart local v37       #to:Ljava/io/FileOutputStream;
    move-object/from16 v30, v31

    .line 634
    .end local v31           #from:Ljava/io/FileInputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 624
    .end local v30           #from:Ljava/io/FileInputStream;
    .end local v37           #to:Ljava/io/FileOutputStream;
    .restart local v31       #from:Ljava/io/FileInputStream;
    .restart local v38       #to:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 628
    if-eqz v38, :cond_f

    .line 629
    :try_start_a
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    .line 630
    :catch_3
    move-exception v3

    goto :goto_5

    .line 627
    :catchall_1
    move-exception v3

    .line 628
    if-eqz v38, :cond_10

    .line 629
    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 632
    :cond_10
    :goto_6
    throw v3

    .line 621
    .end local v27           #baseValue:I
    .end local v28           #buffer:[B
    .end local v29           #bytesRead:I
    .end local v31           #from:Ljava/io/FileInputStream;
    .end local v32           #i:J
    .end local v34           #length:J
    .end local v38           #to:Ljava/io/FileOutputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    .restart local v37       #to:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    .line 622
    :goto_7
    if-eqz v30, :cond_11

    .line 623
    :try_start_c
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 628
    :cond_11
    if-eqz v37, :cond_12

    .line 629
    :try_start_d
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 632
    :cond_12
    :goto_8
    throw v3

    .line 624
    :catch_4
    move-exception v4

    .line 628
    if-eqz v37, :cond_12

    .line 629
    :try_start_e
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_8

    .line 630
    :catch_5
    move-exception v4

    goto :goto_8

    .line 627
    :catchall_3
    move-exception v3

    .line 628
    if-eqz v37, :cond_13

    .line 629
    :try_start_f
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 632
    :cond_13
    :goto_9
    throw v3

    .line 630
    .end local v30           #from:Ljava/io/FileInputStream;
    .end local v37           #to:Ljava/io/FileOutputStream;
    .restart local v27       #baseValue:I
    .restart local v28       #buffer:[B
    .restart local v29       #bytesRead:I
    .restart local v31       #from:Ljava/io/FileInputStream;
    .restart local v32       #i:J
    .restart local v34       #length:J
    .restart local v38       #to:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    goto/16 :goto_4

    :catch_8
    move-exception v3

    goto :goto_5

    :catch_9
    move-exception v4

    goto :goto_6

    .end local v27           #baseValue:I
    .end local v28           #buffer:[B
    .end local v29           #bytesRead:I
    .end local v31           #from:Ljava/io/FileInputStream;
    .end local v32           #i:J
    .end local v34           #length:J
    .end local v38           #to:Ljava/io/FileOutputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    .restart local v37       #to:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    goto :goto_8

    :catch_b
    move-exception v4

    goto :goto_9

    .line 621
    .end local v30           #from:Ljava/io/FileInputStream;
    .restart local v31       #from:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v3

    move-object/from16 v30, v31

    .end local v31           #from:Ljava/io/FileInputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v30           #from:Ljava/io/FileInputStream;
    .end local v37           #to:Ljava/io/FileOutputStream;
    .restart local v31       #from:Ljava/io/FileInputStream;
    .restart local v38       #to:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v3

    move-object/from16 v37, v38

    .end local v38           #to:Ljava/io/FileOutputStream;
    .restart local v37       #to:Ljava/io/FileOutputStream;
    move-object/from16 v30, v31

    .end local v31           #from:Ljava/io/FileInputStream;
    .restart local v30       #from:Ljava/io/FileInputStream;
    goto :goto_7
.end method

.method private CopyFileWithDecryption(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, from:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 677
    .local v1, to:Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v2

    .line 681
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 682
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 683
    const-string v3, "MyFiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CopyFile dst.mkdirs() failed~!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v3

    .line 686
    goto :goto_0

    .line 687
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v2, v3

    .line 701
    goto :goto_0
.end method

.method private CopyFileWithEncryption(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, from:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 643
    .local v1, to:Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v2

    .line 647
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 648
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 649
    const-string v3, "MyFiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CopyFile dst.mkdirs() failed~!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v3

    .line 652
    goto :goto_0

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v2, v3

    .line 667
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/homesync/FileOperationPaste;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/homesync/FileOperationPaste;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static changeDuplicatedFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .parameter "sourceLocation"
    .parameter "targetLocation"

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 478
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 542
    :goto_0
    return-object v12

    .line 482
    :cond_0
    const/4 v4, 0x1

    .line 483
    .local v4, i:I
    move-object v11, p1

    .line 485
    .local v11, temp:Ljava/io/File;
    invoke-virtual {p0, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 487
    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 488
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    .local v10, strBuf:Ljava/lang/StringBuffer;
    const/16 v12, 0x28

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 492
    const/16 v12, 0x29

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 493
    new-instance v11, Ljava/io/File;

    .end local v11           #temp:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .restart local v11       #temp:Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 495
    goto :goto_1

    .line 496
    .end local v10           #strBuf:Ljava/lang/StringBuffer;
    :cond_1
    move-object p1, v11

    .line 500
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 501
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v1, v0, v5

    .line 502
    .local v1, children:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/android/settings_ex/homesync/FileOperationPaste;->changeDuplicatedFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 501
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 506
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #children:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 508
    .end local v4           #i:I
    .end local v11           #temp:Ljava/io/File;
    :cond_4
    const/4 v4, 0x1

    .line 509
    .restart local v4       #i:I
    move-object v11, p1

    .line 511
    .restart local v11       #temp:Ljava/io/File;
    invoke-virtual {p0, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 512
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 514
    .local v8, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 515
    .local v2, ext:Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 517
    .local v6, lastDot:I
    :goto_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 518
    const/4 v12, -0x1

    if-eq v6, v12, :cond_5

    .line 519
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 523
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 524
    .local v9, nameBuf:Ljava/lang/StringBuffer;
    const/16 v12, 0x28

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 526
    const/16 v12, 0x29

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    new-instance v11, Ljava/io/File;

    .end local v11           #temp:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .restart local v11       #temp:Ljava/io/File;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 530
    .end local v9           #nameBuf:Ljava/lang/StringBuffer;
    :cond_5
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 532
    .restart local v9       #nameBuf:Ljava/lang/StringBuffer;
    const/16 v12, 0x28

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 534
    const/16 v12, 0x29

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 536
    new-instance v11, Ljava/io/File;

    .end local v11           #temp:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #temp:Ljava/io/File;
    goto :goto_4

    .line 540
    .end local v9           #nameBuf:Ljava/lang/StringBuffer;
    :cond_6
    move-object p1, v11

    .line 542
    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #filename:Ljava/lang/String;
    .end local v6           #lastDot:I
    .end local v8           #name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .parameter "source"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 416
    iget-boolean v3, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 423
    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 424
    .local v0, in:Ljava/nio/channels/FileChannel;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 425
    .local v5, out:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    .line 426
    .local v1, position:J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 427
    .local v8, size:J
    const/16 v7, 0x4000

    .line 429
    .local v7, maxCount:I
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_3

    .line 430
    const-string v3, "MyFiles"

    const-string v4, "copy destination.createNewFile() failed~!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    :goto_1
    cmp-long v3, v1, v8

    if-gez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_4

    .line 433
    int-to-long v3, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 439
    :cond_4
    if-eqz v0, :cond_5

    .line 440
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    :cond_5
    if-eqz v5, :cond_0

    .line 445
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v3

    goto :goto_0

    .line 441
    :catch_1
    move-exception v3

    .line 444
    if-eqz v5, :cond_0

    .line 445
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 446
    :catch_2
    move-exception v3

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v3

    .line 444
    if-eqz v5, :cond_6

    .line 445
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 447
    :cond_6
    :goto_2
    throw v3

    .line 435
    :catch_3
    move-exception v6

    .line 436
    .local v6, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 439
    if-eqz v0, :cond_7

    .line 440
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 444
    :cond_7
    if-eqz v5, :cond_0

    .line 445
    :try_start_7
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 446
    :catch_4
    move-exception v3

    goto :goto_0

    .line 441
    :catch_5
    move-exception v3

    .line 444
    if-eqz v5, :cond_0

    .line 445
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 446
    :catch_6
    move-exception v3

    goto :goto_0

    .line 443
    :catchall_1
    move-exception v3

    .line 444
    if-eqz v5, :cond_8

    .line 445
    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 447
    :cond_8
    :goto_3
    throw v3

    .line 438
    .end local v6           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    .line 439
    if-eqz v0, :cond_9

    .line 440
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 444
    :cond_9
    if-eqz v5, :cond_a

    .line 445
    :try_start_b
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 447
    :cond_a
    :goto_4
    throw v3

    .line 441
    :catch_7
    move-exception v4

    .line 444
    if-eqz v5, :cond_a

    .line 445
    :try_start_c
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 446
    :catch_8
    move-exception v4

    goto :goto_4

    .line 443
    :catchall_3
    move-exception v3

    .line 444
    if-eqz v5, :cond_b

    .line 445
    :try_start_d
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 447
    :cond_b
    :goto_5
    throw v3

    .line 446
    :catch_9
    move-exception v4

    goto :goto_2

    .restart local v6       #e:Ljava/io/IOException;
    :catch_a
    move-exception v4

    goto :goto_3

    .end local v6           #e:Ljava/io/IOException;
    :catch_b
    move-exception v4

    goto :goto_4

    :catch_c
    move-exception v4

    goto :goto_5
.end method

.method private gather(Ljava/io/File;Ljava/io/File;Ljava/util/LinkedHashMap;)J
    .locals 11
    .parameter "source"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, cached:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/io/File;Ljava/io/File;>;"
    const-wide/16 v4, 0x0

    .line 395
    .local v4, tmpSize:J
    iget-boolean v8, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v8, :cond_0

    move-wide v6, v4

    .line 412
    .end local v4           #tmpSize:J
    .local v6, tmpSize:J
    :goto_0
    return-wide v6

    .line 399
    .end local v6           #tmpSize:J
    .restart local v4       #tmpSize:J
    :cond_0
    const-string v8, "HomeSyncFileOperation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gather "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 403
    iget v8, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    .line 406
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 408
    .local v1, child:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v9, p3}, Lcom/android/settings_ex/homesync/FileOperationPaste;->gather(Ljava/io/File;Ljava/io/File;Ljava/util/LinkedHashMap;)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #child:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    move-wide v6, v4

    .line 412
    .end local v4           #tmpSize:J
    .restart local v6       #tmpSize:J
    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 454
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 455
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 457
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 461
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 462
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 465
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 470
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 471
    .local v0, lastcharator:I
    if-gez v0, :cond_0

    .line 472
    const/4 v1, 0x0

    .line 473
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method createCancelDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0912a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0909ed

    new-instance v3, Lcom/android/settings_ex/homesync/FileOperationPaste$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/FileOperationPaste$4;-><init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090143

    new-instance v3, Lcom/android/settings_ex/homesync/FileOperationPaste$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/FileOperationPaste$3;-><init>(Lcom/android/settings_ex/homesync/FileOperationPaste;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected doFileOperation()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    const-string v4, "HomeSyncFileOperation"

    const-string v5, "doFileOperation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v17, 0x0

    .line 161
    .local v17, absoluteProgress:I
    const/16 v30, 0x0

    .line 162
    .local v30, partialProgress:I
    const/16 v25, 0x0

    .line 164
    .local v25, i:I
    new-instance v33, Ljava/util/LinkedHashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    .local v33, toPasteCollection:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/io/File;Ljava/io/File;>;"
    new-instance v34, Ljava/util/LinkedHashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/LinkedHashMap;-><init>()V

    .line 167
    .local v34, toPasteCollection2:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/io/File;Ljava/io/File;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedHashMap;->clear()V

    .line 168
    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedHashMap;->clear()V

    .line 170
    const/16 v32, 0x0

    .line 171
    .local v32, strpath:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/File;

    .line 172
    .local v20, clipboardOrigin:Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_4

    .line 192
    .end local v20           #clipboardOrigin:Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    if-eqz v4, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, clipboardOriginName:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32           #strpath:Ljava/lang/StringBuilder;
    const-string v4, ""

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v32       #strpath:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/16 v4, 0x2f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v19, clipBoardDestination:Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation clipBoardDestination = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/settings_ex/homesync/FileOperationPaste;->changeDuplicatedFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v31

    .line 204
    .local v31, strDestTemp:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    .end local v19           #clipBoardDestination:Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v19       #clipBoardDestination:Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mEncryptedSourceDir:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    invoke-direct {v0, v6, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->gather(Ljava/io/File;Ljava/io/File;Ljava/util/LinkedHashMap;)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    .line 209
    .end local v19           #clipBoardDestination:Ljava/io/File;
    .end local v21           #clipboardOriginName:Ljava/lang/String;
    .end local v31           #strDestTemp:Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    .line 211
    .local v22, copyCount:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/io/File;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Ljava/io/File;

    .line 213
    .local v28, keyFiles:[Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation : totalSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " copiedSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v18, v28

    .local v18, arr$:[Ljava/io/File;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v26, 0x0

    .local v26, i$:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    aget-object v27, v18, v26

    .line 215
    .local v27, keyFile:Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation : keyFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_5

    .line 301
    .end local v27           #keyFile:Ljava/io/File;
    :cond_2
    :goto_2
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/io/File;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    .end local v28           #keyFiles:[Ljava/io/File;
    check-cast v28, [Ljava/io/File;

    .line 303
    .restart local v28       #keyFiles:[Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation : totalSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " copiedSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v18, v28

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    aget-object v27, v18, v26

    .line 305
    .restart local v27       #keyFile:Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation : keyFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_f

    .line 390
    .end local v27           #keyFile:Ljava/io/File;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    return-void

    .line 177
    .end local v18           #arr$:[Ljava/io/File;
    .end local v22           #copyCount:I
    .end local v28           #keyFiles:[Ljava/io/File;
    .end local v29           #len$:I
    .restart local v20       #clipboardOrigin:Ljava/io/File;
    .local v26, i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 178
    .restart local v21       #clipboardOriginName:Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32           #strpath:Ljava/lang/StringBuilder;
    const-string v4, ""

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v32       #strpath:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->currentDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v4, 0x2f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v19       #clipBoardDestination:Ljava/io/File;
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation clipBoardDestination = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings_ex/homesync/FileOperationPaste;->changeDuplicatedFilename(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v31

    .line 188
    .restart local v31       #strDestTemp:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    .end local v19           #clipBoardDestination:Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v19       #clipBoardDestination:Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/homesync/FileOperationPaste;->gather(Ljava/io/File;Ljava/io/File;Ljava/util/LinkedHashMap;)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    goto/16 :goto_0

    .line 222
    .end local v19           #clipBoardDestination:Ljava/io/File;
    .end local v20           #clipboardOrigin:Ljava/io/File;
    .end local v21           #clipboardOriginName:Ljava/lang/String;
    .end local v31           #strDestTemp:Ljava/lang/String;
    .restart local v18       #arr$:[Ljava/io/File;
    .restart local v22       #copyCount:I
    .local v26, i$:I
    .restart local v27       #keyFile:Ljava/io/File;
    .restart local v28       #keyFiles:[Ljava/io/File;
    .restart local v29       #len$:I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 223
    add-int/lit8 v22, v22, 0x1

    .line 225
    :cond_6
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/io/File;

    .line 227
    .local v23, destination:Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f091297

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    .line 235
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 236
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation mPasteType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    sget-object v5, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    sget-object v5, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->SelectNewer:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    if-ne v4, v5, :cond_9

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings_ex/homesync/StorageUtil;->isNewerFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 241
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_5
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_c

    .line 261
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 263
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 242
    :catch_0
    move-exception v24

    .line 243
    .local v24, e:Ljava/lang/Exception;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 244
    const/16 v16, 0x0

    .line 246
    .local v16, absoluteFilename:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    const-string v4, "FileOperation.java Exception = ["

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/16 v4, 0x5d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 253
    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    .end local v24           #e:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    .line 254
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 255
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x64

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    goto/16 :goto_6

    .line 268
    :cond_a
    const-string v4, "HomeSyncFileOperation"

    const-string v5, "doFileOperation 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_1
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :goto_7
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_c

    .line 282
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 284
    :cond_b
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 3-1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 272
    :catch_1
    move-exception v24

    .line 273
    .restart local v24       #e:Ljava/lang/Exception;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 274
    const/16 v16, 0x0

    .line 275
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    const-string v4, "FileOperation.java Exception = ["

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/16 v4, 0x5d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 291
    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    .end local v24           #e:Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    if-eqz v4, :cond_e

    .line 292
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 293
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 298
    :cond_e
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 4 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 312
    .end local v23           #destination:Ljava/io/File;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 313
    add-int/lit8 v22, v22, 0x1

    .line 315
    :cond_10
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/io/File;

    .line 318
    .restart local v23       #destination:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 319
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation mPasteType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    sget-object v5, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    if-eq v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    sget-object v5, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->SelectNewer:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    if-ne v4, v5, :cond_14

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings_ex/homesync/StorageUtil;->isNewerFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 324
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mRequestType:I

    if-nez v4, :cond_13

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFileWithDecryption(Ljava/io/File;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    :goto_8
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_18

    .line 347
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 349
    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 327
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFileWithEncryption(Ljava/io/File;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    .line 328
    :catch_2
    move-exception v24

    .line 329
    .restart local v24       #e:Ljava/lang/Exception;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 330
    const/16 v16, 0x0

    .line 332
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    const-string v4, "FileOperation.java Exception = ["

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const/16 v4, 0x5d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 339
    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    .end local v24           #e:Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    .line 340
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    .line 341
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x64

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/android/settings_ex/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    goto/16 :goto_9

    .line 354
    :cond_15
    const-string v4, "HomeSyncFileOperation"

    const-string v5, "doFileOperation 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_4
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mRequestType:I

    if-nez v4, :cond_17

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFileWithDecryption(Ljava/io/File;Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 368
    :goto_a
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v4, :cond_18

    .line 371
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_16

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 373
    :cond_16
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 3-1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 360
    :cond_17
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/homesync/FileOperationPaste;->CopyFileWithEncryption(Ljava/io/File;Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_a

    .line 361
    :catch_3
    move-exception v24

    .line 362
    .restart local v24       #e:Ljava/lang/Exception;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 363
    const/16 v16, 0x0

    .line 364
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    const-string v4, "FileOperation.java Exception = ["

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v16       #absoluteFilename:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v4, 0x5d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 380
    .end local v16           #absoluteFilename:Ljava/lang/StringBuilder;
    .end local v24           #e:Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    if-eqz v4, :cond_1a

    .line 381
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_19

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 382
    :cond_19
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 387
    :cond_1a
    const-string v4, "HomeSyncFileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFileOperation 4 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    .line 121
    return-void
.end method
