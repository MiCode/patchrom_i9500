.class Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mWifiEnabled:Z

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 430
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 433
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 434
    .local v0, len:I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_0
    return-object v1
.end method


# virtual methods
.method CheckWifiState()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 297
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 300
    .local v1, isWifiEnabled:Z
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, loopTimeout:I
    if-nez v1, :cond_6

    .line 303
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 304
    :cond_1
    if-nez v1, :cond_2

    .line 306
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 317
    :cond_2
    if-eqz v1, :cond_4

    .line 318
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiBackupRestore"

    const-string v4, ">>>>> WIFI ON <<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v5

    .line 325
    :goto_0
    return v3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    .line 314
    goto :goto_0

    .line 321
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "WifiBackupRestore"

    const-string v5, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v3, v4

    .line 322
    goto :goto_0

    :cond_6
    move v3, v5

    .line 325
    goto :goto_0
.end method

.method public StreamCrypt(Ljava/lang/String;)V
    .locals 5
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 504
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 505
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 506
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 507
    .local v1, keyBytes:[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$102(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 510
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$202(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 512
    return-void
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 533
    .local v0, iv:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 534
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 537
    .local v1, spec:Ljava/security/spec/AlgorithmParameterSpec;
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$200()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 538
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter "inFile"
    .parameter "outFile"

    .prologue
    .line 459
    const/4 v8, 0x0

    .line 460
    .local v8, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 461
    .local v10, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 462
    .local v3, fiTemp:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 463
    .local v5, foTemp:Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 466
    .local v13, ret:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->StreamCrypt(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    if-nez v14, :cond_5

    .line 468
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v8           #is:Ljava/io/InputStream;
    .local v9, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 470
    .end local v5           #foTemp:Ljava/io/FileOutputStream;
    .local v6, foTemp:Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v10

    move-object v5, v6

    .end local v6           #foTemp:Ljava/io/FileOutputStream;
    .restart local v5       #foTemp:Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 476
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 477
    .local v12, readcount:I
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 478
    .local v1, buffer:[B
    :goto_1
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    .line 479
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 481
    .end local v1           #buffer:[B
    .end local v12           #readcount:I
    :catch_0
    move-exception v2

    .line 482
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    const/4 v13, -0x1

    .line 486
    if-eqz v10, :cond_1

    .line 487
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 488
    :cond_1
    if-eqz v5, :cond_2

    .line 489
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 490
    :cond_2
    if-eqz v8, :cond_3

    .line 491
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 492
    :cond_3
    if-eqz v3, :cond_4

    .line 493
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 499
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    return v13

    .line 471
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 472
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 473
    .end local v3           #fiTemp:Ljava/io/FileInputStream;
    .local v4, fiTemp:Ljava/io/FileInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    .line 474
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .end local v10           #os:Ljava/io/OutputStream;
    .local v11, os:Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4           #fiTemp:Ljava/io/FileInputStream;
    .restart local v3       #fiTemp:Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11           #os:Ljava/io/OutputStream;
    .restart local v10       #os:Ljava/io/OutputStream;
    goto :goto_0

    .line 486
    .restart local v1       #buffer:[B
    .restart local v12       #readcount:I
    :cond_6
    if-eqz v10, :cond_7

    .line 487
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 488
    :cond_7
    if-eqz v5, :cond_8

    .line 489
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 490
    :cond_8
    if-eqz v8, :cond_9

    .line 491
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 492
    :cond_9
    if-eqz v3, :cond_4

    .line 493
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 494
    :catch_1
    move-exception v7

    .line 495
    .local v7, ioe:Ljava/io/IOException;
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v13, -0x1

    .line 498
    goto :goto_3

    .line 494
    .end local v1           #buffer:[B
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v12           #readcount:I
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 495
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v13, -0x1

    .line 498
    goto :goto_3

    .line 485
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 486
    :goto_4
    if-eqz v10, :cond_a

    .line 487
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 488
    :cond_a
    if-eqz v5, :cond_b

    .line 489
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 490
    :cond_b
    if-eqz v8, :cond_c

    .line 491
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 492
    :cond_c
    if-eqz v3, :cond_d

    .line 493
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 497
    :cond_d
    :goto_5
    throw v14

    .line 494
    :catch_3
    move-exception v7

    .line 495
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v15, "WifiBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v13, -0x1

    goto :goto_5

    .line 485
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_4

    .end local v5           #foTemp:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v6       #foTemp:Ljava/io/FileOutputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6           #foTemp:Ljava/io/FileOutputStream;
    .restart local v5       #foTemp:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto :goto_4

    .end local v3           #fiTemp:Ljava/io/FileInputStream;
    .restart local v4       #fiTemp:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v14

    move-object v3, v4

    .end local v4           #fiTemp:Ljava/io/FileInputStream;
    .restart local v3       #fiTemp:Ljava/io/FileInputStream;
    goto :goto_4

    .line 481
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v5           #foTemp:Ljava/io/FileOutputStream;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v6       #foTemp:Ljava/io/FileOutputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #foTemp:Ljava/io/FileOutputStream;
    .restart local v5       #foTemp:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v3           #fiTemp:Ljava/io/FileInputStream;
    .restart local v4       #fiTemp:Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #fiTemp:Ljava/io/FileInputStream;
    .restart local v3       #fiTemp:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 518
    .local v0, iv:[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 519
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 522
    .local v1, spec:Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 525
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$200()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 526
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$100()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 3
    .parameter "path"

    .prologue
    .line 425
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, writer:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 332
    .local v1, ret:I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 333
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wifi_wpaconf.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, xmlPath:Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 337
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 338
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    const-string v6, ""

    const-string v7, "model"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const-string v6, "wpa_supplicant.conf"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    const-string v6, ""

    const-string v7, "conf"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const-string v6, ""

    const-string v7, "Wi-Fi"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 355
    if-eqz v4, :cond_0

    .line 356
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 362
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #writer:Ljava/io/FileWriter;
    .end local v5           #xmlPath:Ljava/lang/String;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return v1

    .line 357
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4       #writer:Ljava/io/FileWriter;
    .restart local v5       #xmlPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const/4 v1, -0x1

    move-object v3, v4

    .line 361
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #xmlPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "WifiBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeXML exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    const/4 v1, -0x1

    .line 355
    if-eqz v3, :cond_1

    .line 356
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 357
    :catch_2
    move-exception v0

    .line 358
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const/4 v1, -0x1

    .line 361
    goto :goto_0

    .line 354
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 355
    :goto_2
    if-eqz v3, :cond_2

    .line 356
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 360
    :cond_2
    :goto_3
    throw v6

    .line 357
    :catch_3
    move-exception v0

    .line 358
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const/4 v1, -0x1

    goto :goto_3

    .line 354
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4       #writer:Ljava/io/FileWriter;
    .restart local v5       #xmlPath:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2

    .line 350
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 17
    .parameter "path"

    .prologue
    .line 366
    const/4 v11, 0x0

    .line 367
    .local v11, ret:I
    const/4 v5, 0x0

    .line 369
    .local v5, fr:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 370
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 371
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 373
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "wifi_wpaconf.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 374
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 376
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 377
    .local v9, parserEvent:I
    const/4 v7, 0x0

    .line 379
    .local v7, initem:Z
    const-string v13, ""

    .line 380
    .local v13, sTagName:Ljava/lang/String;
    const-string v2, ""

    .line 382
    .local v2, eTagName:Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v9, v14, :cond_7

    .line 383
    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    .line 384
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 385
    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 386
    :cond_0
    const/4 v7, 0x1

    .line 405
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 388
    :cond_2
    const/4 v14, 0x4

    if-ne v9, v14, :cond_5

    .line 389
    if-eqz v7, :cond_4

    const-string v14, "model"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] model : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 407
    .end local v2           #eTagName:Ljava/lang/String;
    .end local v7           #initem:Z
    .end local v9           #parserEvent:I
    .end local v13           #sTagName:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v5, v6

    .line 408
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #fr:Ljava/io/FileReader;
    .local v10, re:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_2
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "runtimeException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    const/4 v11, -0x1

    .line 415
    if-eqz v5, :cond_3

    .line 416
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v10           #re:Ljava/lang/RuntimeException;
    :cond_3
    :goto_3
    move v12, v11

    .line 421
    .end local v11           #ret:I
    .local v12, ret:I
    :goto_4
    return v12

    .line 392
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v12           #ret:I
    .restart local v2       #eTagName:Ljava/lang/String;
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #initem:Z
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #parserEvent:I
    .restart local v11       #ret:I
    .restart local v13       #sTagName:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    const-string v14, "conf"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    .line 394
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[readXML] xmlConf : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 410
    .end local v2           #eTagName:Ljava/lang/String;
    .end local v7           #initem:Z
    .end local v9           #parserEvent:I
    .end local v13           #sTagName:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v5, v6

    .line 411
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #fr:Ljava/io/FileReader;
    :goto_5
    :try_start_5
    const-string v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read XML Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    const/4 v11, -0x1

    .line 415
    if-eqz v5, :cond_3

    .line 416
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 417
    :catch_2
    move-exception v4

    .local v4, fe:Ljava/lang/Exception;
    move v12, v11

    .line 418
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto :goto_4

    .line 396
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #fe:Ljava/lang/Exception;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v12           #ret:I
    .restart local v2       #eTagName:Ljava/lang/String;
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #initem:Z
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #parserEvent:I
    .restart local v11       #ret:I
    .restart local v13       #sTagName:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x3

    if-ne v9, v14, :cond_1

    .line 397
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 398
    if-eqz v7, :cond_6

    const-string v14, "model"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 399
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 400
    :cond_6
    if-eqz v7, :cond_1

    const-string v14, "conf"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v14

    if-eqz v14, :cond_1

    .line 401
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 415
    :cond_7
    if-eqz v6, :cond_8

    .line 416
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    .line 419
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto/16 :goto_3

    .line 417
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .restart local v4       #fe:Ljava/lang/Exception;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move v12, v11

    .line 418
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_4

    .line 417
    .end local v2           #eTagName:Ljava/lang/String;
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #fe:Ljava/lang/Exception;
    .end local v7           #initem:Z
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #parserEvent:I
    .end local v12           #ret:I
    .end local v13           #sTagName:Ljava/lang/String;
    .restart local v10       #re:Ljava/lang/RuntimeException;
    .restart local v11       #ret:I
    :catch_4
    move-exception v4

    .restart local v4       #fe:Ljava/lang/Exception;
    move v12, v11

    .line 418
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_4

    .line 414
    .end local v4           #fe:Ljava/lang/Exception;
    .end local v10           #re:Ljava/lang/RuntimeException;
    .end local v12           #ret:I
    .restart local v11       #ret:I
    :catchall_0
    move-exception v14

    .line 415
    :goto_6
    if-eqz v5, :cond_9

    .line 416
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 418
    :cond_9
    throw v14

    .line 417
    :catch_5
    move-exception v4

    .restart local v4       #fe:Ljava/lang/Exception;
    move v12, v11

    .line 418
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_4

    .line 414
    .end local v4           #fe:Ljava/lang/Exception;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v12           #ret:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #ret:I
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 410
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 407
    :catch_7
    move-exception v10

    goto/16 :goto_2
.end method

.method public run()V
    .locals 24

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 137
    const-string v20, "WifiBackupRestore"

    const-string v21, "intent is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "SAVE_PATH"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 143
    .local v17, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "ACTION"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 144
    .local v6, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SESSION_KEY"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SOURCE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 148
    const-string v20, "WifiBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[BACKUP] path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", action : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mSource : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    .line 152
    if-nez v6, :cond_12

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 154
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 159
    :cond_3
    const-string v20, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v10

    .line 160
    .local v10, confSize:J
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-nez v20, :cond_5

    .line 161
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "WifiBackupRestore"

    const-string v21, "There is no conf file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_7

    .line 168
    :cond_6
    const-string v20, "WifiBackupRestore"

    const-string v21, "There is no networks to backup"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 174
    :cond_7
    new-instance v19, Landroid/os/StatFs;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 175
    .local v19, stat:Landroid/os/StatFs;
    if-nez v19, :cond_9

    .line 176
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v20, "WifiBackupRestore"

    const-string v21, "checking memory fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_8
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 180
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 181
    .local v8, availableBlocks:J
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v4, v0

    .line 182
    .local v4, BlockSizeInBytes:J
    mul-long v13, v8, v4

    .line 183
    .local v13, freeSpaceInBytes:J
    cmp-long v20, v13, v10

    if-gez v20, :cond_b

    .line 184
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "WifiBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "freeSpaceInBytes : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", confSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_a
    const/16 v20, 0x1

    const/16 v21, 0x2

    long-to-int v0, v10

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 188
    :cond_b
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 189
    .local v16, msg:Landroid/os/Message;
    const/16 v20, 0x3d

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 191
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v7, args:Landroid/os/Bundle;
    const-string v20, "OPTION"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v20, "PATH"

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, v16

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v20

    if-nez v20, :cond_e

    .line 197
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "WifiBackupRestore"

    const-string v21, "BACK UP !!!!!!!!!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_c
    const-string v20, "/data/misc/wifi/temp.conf"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "wpa_supplicant.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 206
    .local v18, ret:I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 207
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_d

    const-string v20, "WifiBackupRestore"

    const-string v21, "encrypt fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_d
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 199
    .end local v18           #ret:I
    :cond_e
    const-string v20, "WifiBackupRestore"

    const-string v21, "Failed to write networks"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 212
    .restart local v18       #ret:I
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v18

    .line 213
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 214
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "WifiBackupRestore"

    const-string v21, "makeXML fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_10
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 218
    :cond_11
    new-instance v12, Ljava/io/File;

    const-string v20, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v12, f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 220
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 222
    .end local v4           #BlockSizeInBytes:J
    .end local v7           #args:Landroid/os/Bundle;
    .end local v8           #availableBlocks:J
    .end local v10           #confSize:J
    .end local v12           #f:Ljava/io/File;
    .end local v13           #freeSpaceInBytes:J
    .end local v16           #msg:Landroid/os/Message;
    .end local v18           #ret:I
    .end local v19           #stat:Landroid/os/StatFs;
    :cond_12
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_13

    .line 224
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "WifiBackupRestore"

    const-string v21, "cancel"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    :cond_13
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 228
    .end local v6           #action:I
    .end local v17           #path:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "SAVE_PATH"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 230
    .restart local v17       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "ACTION"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 231
    .restart local v6       #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SESSION_KEY"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SOURCE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 233
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 234
    const-string v20, "WifiBackupRestore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[RESTORE] path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", action : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mSource : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    .line 238
    if-nez v6, :cond_1d

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 240
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 245
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v15

    .line 246
    .local v15, modelName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v18

    .line 247
    .restart local v18       #ret:I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 248
    const-string v20, "WifiBackupRestore"

    const-string v21, "xml parsing error"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 253
    :cond_17
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_1b

    .line 255
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 256
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 257
    const-string v20, "WifiBackupRestore"

    const-string v21, "decrypt fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 262
    :cond_18
    new-instance v12, Ljava/io/File;

    const-string v20, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v12       #f:Ljava/io/File;
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 264
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 265
    .restart local v16       #msg:Landroid/os/Message;
    const/16 v20, 0x3d

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 267
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 268
    .restart local v7       #args:Landroid/os/Bundle;
    const-string v20, "OPTION"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v20, "PATH"

    const-string v21, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v16

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v20

    if-nez v20, :cond_1a

    .line 273
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_19

    const-string v20, "WifiBackupRestore"

    const-string v21, "RESTORE !!!!!!!!!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_19
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
    const-string v20, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v12       #f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 286
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 275
    :cond_1a
    const-string v20, "WifiBackupRestore"

    const-string v21, "Failed to read networks"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 280
    .end local v7           #args:Landroid/os/Bundle;
    .end local v12           #f:Ljava/io/File;
    .end local v16           #msg:Landroid/os/Message;
    :cond_1b
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1c

    const-string v20, "WifiBackupRestore"

    const-string v21, "can\'t read file"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1c
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 287
    .end local v15           #modelName:Ljava/lang/String;
    .end local v18           #ret:I
    :cond_1d
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 289
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiBackupRestore;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "WifiBackupRestore"

    const-string v21, "cancel"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    :cond_1e
    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0
.end method

.method sendResponse(III)V
    .locals 4
    .parameter "result"
    .parameter "errorCode"
    .parameter "reqSize"

    .prologue
    .line 441
    const-string v1, "WifiBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    if-nez v1, :cond_2

    .line 444
    const-string v1, "android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :cond_0
    :goto_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 456
    :cond_1
    return-void

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/android/settings_ex/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/android/settings_ex/wifi/WifiBackupRestore;->mOption:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 446
    const-string v1, "android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
