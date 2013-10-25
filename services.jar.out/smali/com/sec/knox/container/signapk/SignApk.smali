.class public Lcom/sec/knox/container/signapk/SignApk;
.super Ljava/lang/Object;
.source "SignApk.java"


# static fields
.field private static final CERT_RSA_NAME:Ljava/lang/String; = "META-INF/CERT.RSA"

.field private static final CERT_SF_NAME:Ljava/lang/String; = "META-INF/CERT.SF"

.field public static final TAG:Ljava/lang/String; = "ContainerSignApk"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static stripPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mSecurityError:Ljava/lang/Object;

.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "^META-INF/(.*)[.](SF|RSA|DSA)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/knox/container/signapk/SignApk;->stripPattern:Ljava/util/regex/Pattern;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertSignaturesToString([Lcom/sec/knox/container/signapk/CertSignature;)[Ljava/lang/String;
    .locals 3
    .parameter "mStringSignatures"

    .prologue
    .line 463
    if-nez p1, :cond_1

    .line 464
    const/4 v1, 0x0

    .line 471
    :cond_0
    return-object v1

    .line 466
    :cond_1
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 468
    .local v1, mSignature:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 469
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sec/knox/container/signapk/CertSignature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSignaturesInternal(Ljava/lang/String;)[Lcom/sec/knox/container/signapk/CertSignature;
    .locals 20
    .parameter "apkPath"

    .prologue
    .line 333
    move-object/from16 v13, p1

    .line 334
    .local v13, mArchiveSourcePath:Ljava/lang/String;
    const/4 v14, 0x0

    .line 338
    .local v14, mSignatures:[Lcom/sec/knox/container/signapk/CertSignature;
    const/4 v15, 0x0

    .line 339
    .local v15, readBuffer:[B
    sget-object v18, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 340
    :try_start_0
    sget-object v16, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 341
    .local v16, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_0

    .line 342
    const/16 v17, 0x0

    sput-object v17, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 345
    :cond_0
    if-nez v15, :cond_1

    .line 346
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 347
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 349
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :try_start_1
    new-instance v10, Ljava/util/jar/JarFile;

    invoke-direct {v10, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 353
    .local v10, jarFile:Ljava/util/jar/JarFile;
    const/4 v3, 0x0

    .line 355
    .local v3, certs:[Ljava/security/cert/Certificate;
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 356
    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 357
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    .line 358
    .local v11, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    .line 361
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AndroidManifest.xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 362
    const-string v17, "ContainerSignApk"

    const-string v18, "Found AndroidManifest file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 368
    invoke-static {v10, v11, v15}, Lcom/sec/knox/container/signapk/SignApk;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v12

    .line 370
    .local v12, localCerts:[Ljava/security/cert/Certificate;
    if-nez v12, :cond_4

    .line 371
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 375
    const/16 v17, 0x0

    .line 432
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    .end local v11           #je:Ljava/util/jar/JarEntry;
    .end local v12           #localCerts:[Ljava/security/cert/Certificate;
    :goto_1
    return-object v17

    .line 349
    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 376
    .restart local v3       #certs:[Ljava/security/cert/Certificate;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    .restart local v11       #je:Ljava/util/jar/JarEntry;
    .restart local v12       #localCerts:[Ljava/security/cert/Certificate;
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_4
    if-nez v3, :cond_5

    .line 377
    move-object v3, v12

    goto :goto_0

    .line 380
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    :try_start_3
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 381
    const/4 v7, 0x0

    .line 382
    .local v7, found:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_6

    .line 383
    aget-object v17, v3, v8

    if-eqz v17, :cond_8

    aget-object v17, v3, v8

    aget-object v18, v12, v9

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 385
    const/4 v7, 0x1

    .line 389
    :cond_6
    if-eqz v7, :cond_7

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 390
    :cond_7
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    .line 394
    const/16 v17, 0x0

    goto :goto_1

    .line 382
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 380
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 400
    .end local v7           #found:Z
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v11           #je:Ljava/util/jar/JarEntry;
    .end local v12           #localCerts:[Ljava/security/cert/Certificate;
    :cond_a
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    .line 402
    sget-object v18, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    monitor-enter v18
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 403
    :try_start_4
    sput-object v16, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 404
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 406
    if-eqz v3, :cond_c

    :try_start_5
    array-length v0, v3

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 407
    array-length v2, v3

    .line 408
    .local v2, N:I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [Lcom/sec/knox/container/signapk/CertSignature;

    .line 410
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    if-ge v8, v2, :cond_b

    .line 411
    new-instance v17, Lcom/sec/knox/container/signapk/CertSignature;

    aget-object v18, v3, v8

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/sec/knox/container/signapk/CertSignature;-><init>([B)V

    aput-object v17, v14, v8
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 410
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 404
    .end local v2           #N:I
    .end local v8           #i:I
    :catchall_1
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v17
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 418
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    :catch_0
    move-exception v6

    .line 419
    .local v6, ex:Ljava/security/cert/CertificateEncodingException;
    const-string v17, "ContainerSignApk"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #ex:Ljava/security/cert/CertificateEncodingException;
    :cond_b
    move-object/from16 v17, v14

    .line 432
    goto/16 :goto_1

    .line 414
    .restart local v3       #certs:[Ljava/security/cert/Certificate;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v10       #jarFile:Ljava/util/jar/JarFile;
    :cond_c
    :try_start_8
    const-string v17, "ContainerSignApk"

    const-string v18, "Package has no certificates; ignoring!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 416
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 421
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10           #jarFile:Ljava/util/jar/JarFile;
    :catch_1
    move-exception v4

    .line 422
    .local v4, e:Ljava/io/IOException;
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 426
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 427
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 430
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v3, 0x0

    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 439
    :goto_0
    const/4 v2, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 441
    const-string v2, "ContainerSignApk"

    const-string v4, "loadCertificates going in while loop"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "SecurityHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    if-eqz v1, :cond_0

    .line 449
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    :goto_1
    const/4 v1, 0x0

    :cond_0
    move-object v2, v3

    .line 453
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v2

    .line 443
    :cond_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    :goto_3
    check-cast v2, [Ljava/security/cert/Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 448
    if-eqz v1, :cond_1

    .line 449
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 450
    :goto_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 443
    goto :goto_3

    .line 448
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 449
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 450
    :goto_5
    const/4 v1, 0x0

    :cond_4
    throw v2

    .line 449
    :catch_1
    move-exception v3

    goto :goto_4

    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_5
.end method

.method private static readBytes(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 113
    .local v0, buf:[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, num:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 116
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getSignatures(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apkPath"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/SignApk;->getSignaturesInternal(Ljava/lang/String;)[Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/knox/container/signapk/SignApk;->convertSignaturesToString([Lcom/sec/knox/container/signapk/CertSignature;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
