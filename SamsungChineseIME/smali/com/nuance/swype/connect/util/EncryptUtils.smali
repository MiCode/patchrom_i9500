.class public Lcom/nuance/swype/connect/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final publicKeyExponent:Ljava/lang/String; = "10001"

.field private static final publicKeyModulus:Ljava/lang/String; = "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

.field private static final secretKey:Ljava/lang/String; = "75DE491A38FD348E06C1B0313A97CB00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteArray(Ljava/util/UUID;)[B
    .locals 9
    .parameter "uuid"

    .prologue
    const/16 v8, 0x10

    .line 442
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 443
    .local v4, msb:J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 444
    .local v2, lsb:J
    new-array v0, v8, [B

    .line 446
    .local v0, buffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 447
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v8, :cond_1

    .line 450
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    :cond_1
    return-object v0
.end method

.method public static final base64ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 302
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 303
    .local v0, base64:[B
    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 459
    .local v0, b2:[B
    aput-byte v3, v0, v2

    .line 460
    array-length v1, p0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 235
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 236
    .local v0, base64:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static final decodeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "raw"
    .parameter "flags"

    .prologue
    .line 241
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 242
    .local v0, base64:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static final decrypt([B)[B
    .locals 8
    .parameter "message"

    .prologue
    .line 355
    invoke-static {p0}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptAESKey([B)[B

    move-result-object v0

    .line 356
    .local v0, aesKey:[B
    if-eqz v0, :cond_0

    .line 357
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lcom/nuance/swype/connect/util/EncryptUtils;->strToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 358
    .local v4, raw_aeskey:[B
    if-eqz v4, :cond_0

    .line 359
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 361
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 362
    .local v2, cipherData:[B
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 363
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 364
    const/16 v6, 0x80

    array-length v7, p0

    add-int/lit8 v7, v7, -0x80

    invoke-virtual {v1, p0, v6, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 381
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #cipherData:[B
    .end local v4           #raw_aeskey:[B
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 366
    .restart local v2       #cipherData:[B
    .restart local v4       #raw_aeskey:[B
    .restart local v5       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v3

    .line 367
    .local v3, e:Ljava/security/InvalidKeyException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 381
    .end local v2           #cipherData:[B
    .end local v3           #e:Ljava/security/InvalidKeyException;
    .end local v4           #raw_aeskey:[B
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 368
    .restart local v2       #cipherData:[B
    .restart local v4       #raw_aeskey:[B
    .restart local v5       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_1
    move-exception v3

    .line 369
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .line 371
    .local v3, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    .end local v3           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v3

    .line 373
    .local v3, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    .end local v3           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v3

    .line 375
    .local v3, e:Ljavax/crypto/BadPaddingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    .end local v3           #e:Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v3

    .line 377
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static decryptAESKey([B)[B
    .locals 10
    .parameter "message"

    .prologue
    const/16 v9, 0x10

    .line 384
    new-instance v6, Ljava/math/BigInteger;

    const-string v8, "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

    invoke-direct {v6, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 385
    .local v6, modulus:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string v8, "10001"

    invoke-direct {v3, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 386
    .local v3, exponent:Ljava/math/BigInteger;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v6, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 389
    .local v5, keySpec:Ljava/security/spec/RSAPublicKeySpec;
    :try_start_0
    const-string v8, "RSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 390
    .local v4, fact:Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    .line 391
    .local v7, pubKey:Ljava/security/PublicKey;
    const-string v8, "RSA/ECB/Pkcs1Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 392
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 393
    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-virtual {v0, p0, v8, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 411
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #fact:Ljava/security/KeyFactory;
    .end local v7           #pubKey:Ljava/security/PublicKey;
    :goto_0
    return-object v1

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Ljava/security/InvalidKeyException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 411
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 397
    :catch_1
    move-exception v2

    .line 398
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 400
    .local v2, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 401
    .end local v2           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_3
    move-exception v2

    .line 402
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v2

    .line 404
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    .line 406
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decryptAESKey() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    .end local v2           #e:Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decrypt() Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static final decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 278
    const-string v0, "75DE491A38FD348E06C1B0313A97CB00"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "raw"
    .parameter "secret"
    .parameter "flags"

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decryptString(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 3
    .parameter "raw"
    .parameter "secret"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 290
    if-eqz p0, :cond_0

    .line 292
    :try_start_0
    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 293
    .local v0, base64:[B
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretDecrypt([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 298
    .end local v0           #base64:[B
    :cond_0
    :goto_0
    return-object v2

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static final decryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "raw"
    .parameter "secret"
    .parameter "flags"

    .prologue
    .line 282
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeByteArray([B)Ljava/lang/String;
    .locals 1
    .parameter "raw"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeByteArray([BI)Ljava/lang/String;
    .locals 1
    .parameter "raw"
    .parameter "flags"

    .prologue
    .line 231
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "raw"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "raw"
    .parameter "flags"

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 223
    .local v0, base64:[B
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 251
    const-string v0, "75DE491A38FD348E06C1B0313A97CB00"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encryptString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "raw"
    .parameter "secret"
    .parameter "flags"

    .prologue
    .line 255
    if-eqz p0, :cond_0

    .line 256
    invoke-static {p0, p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 257
    .local v0, stats:[B
    invoke-static {v0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 259
    .end local v0           #stats:[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final encryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "raw"
    .parameter "secret"
    .parameter "flags"

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 265
    .local v0, key:[B
    invoke-static {p0, v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 266
    .local v1, stats:[B
    invoke-static {v1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 268
    .end local v0           #key:[B
    .end local v1           #stats:[B
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBytesOfFile(Ljava/lang/String;)[B
    .locals 8
    .parameter "filename"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, licenseFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-eqz v2, :cond_1

    .line 41
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 42
    .local v5, size:I
    if-lez v5, :cond_1

    .line 43
    new-array v0, v5, [B

    .line 44
    .local v0, data:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 53
    if-eqz v2, :cond_0

    .line 55
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 61
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #licenseFile:Ljava/io/File;
    .end local v5           #size:I
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 53
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #licenseFile:Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_4

    .line 55
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .line 61
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #licenseFile:Ljava/io/File;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #licenseFile:Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 58
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 49
    .end local v4           #licenseFile:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 50
    .local v3, ignored:Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    if-eqz v1, :cond_2

    .line 55
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 57
    :catch_2
    move-exception v6

    goto :goto_2

    .line 53
    .end local v3           #ignored:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    .line 55
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 58
    :cond_3
    :goto_5
    throw v6

    .line 57
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #data:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #licenseFile:Ljava/io/File;
    .restart local v5       #size:I
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #licenseFile:Ljava/io/File;
    .end local v5           #size:I
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 53
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #licenseFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 49
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final hashPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 182
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 183
    .local v1, md:Ljava/security/MessageDigest;
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 184
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 186
    .local v2, sha1hash:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 187
    .local v0, hash:Ljava/math/BigInteger;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    .end local v0           #hash:Ljava/math/BigInteger;
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #sha1hash:[B
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v3

    .line 193
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    :catch_1
    move-exception v3

    goto :goto_1

    .line 189
    :catch_2
    move-exception v3

    goto :goto_1

    .line 188
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 22
    .parameter "file"

    .prologue
    .line 100
    const/16 v19, 0x0

    .line 103
    .local v19, validFile:Z
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 104
    const/16 v19, 0x1

    .line 111
    :cond_0
    :goto_0
    if-nez v19, :cond_2

    .line 112
    const-string v20, ""

    .line 176
    :cond_1
    :goto_1
    return-object v20

    .line 106
    :catch_0
    move-exception v8

    .line 107
    .local v8, ex:Ljava/lang/SecurityException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error accessing file to create MD5 for:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 108
    const/16 v19, 0x0

    goto :goto_0

    .line 115
    .end local v8           #ex:Ljava/lang/SecurityException;
    :cond_2
    const/4 v9, 0x0

    .line 116
    .local v9, fileStream:Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 119
    .local v17, stream:Ljava/io/BufferedInputStream;
    :try_start_1
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 120
    .local v6, digest:Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    .line 122
    .local v15, messageDigest:[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 123
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .local v10, fileStream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    .line 125
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .local v18, stream:Ljava/io/BufferedInputStream;
    const/16 v20, 0x2000

    :try_start_3
    move/from16 v0, v20

    new-array v5, v0, [B

    .line 127
    .local v5, bytes:[B
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, byteCount:I
    if-lez v4, :cond_5

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v5, v0, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    goto :goto_2

    .line 154
    .end local v4           #byteCount:I
    .end local v5           #bytes:[B
    :catch_1
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .line 155
    .end local v6           #digest:Ljava/security/MessageDigest;
    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .end local v15           #messageDigest:[B
    .local v8, ex:Ljava/security/NoSuchAlgorithmException;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error getting the md5!!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    if-eqz v17, :cond_3

    .line 167
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_3
    if-eqz v9, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14

    .line 176
    .end local v8           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_4
    :goto_4
    const-string v20, ""

    goto :goto_1

    .line 131
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v4       #byteCount:I
    .restart local v5       #bytes:[B
    .restart local v6       #digest:Ljava/security/MessageDigest;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v15       #messageDigest:[B
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 132
    .local v7, digestBytes:[B
    new-instance v16, Ljava/lang/StringBuilder;

    array-length v0, v7

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v16, sb:Ljava/lang/StringBuilder;
    move-object v2, v7

    .local v2, arr$:[B
    array-length v14, v2

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_5
    if-ge v13, v14, :cond_6

    aget-byte v3, v2, v13

    .line 134
    .local v3, b:B
    const-string v20, "0123456789abcdef"

    and-int/lit16 v0, v3, 0xf0

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    const-string v20, "0123456789abcdef"

    and-int/lit8 v21, v3, 0xf

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 140
    .end local v3           #b:B
    :cond_6
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v11, hexString:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_8

    .line 142
    aget-byte v20, v15, v12

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, b:Ljava/lang/String;
    aget-byte v20, v15, v12

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 144
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_7
    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 149
    .end local v3           #b:Ljava/lang/String;
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 150
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Old: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    move-result-object v20

    .line 166
    if-eqz v18, :cond_9

    .line 167
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_9
    if-eqz v10, :cond_1

    .line 170
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 172
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .line 156
    .end local v2           #arr$:[B
    .end local v4           #byteCount:I
    .end local v5           #bytes:[B
    .end local v6           #digest:Ljava/security/MessageDigest;
    .end local v7           #digestBytes:[B
    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .end local v11           #hexString:Ljava/lang/StringBuffer;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #messageDigest:[B
    .end local v16           #sb:Ljava/lang/StringBuilder;
    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v8

    .line 157
    .local v8, ex:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to find file."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 166
    if-eqz v17, :cond_a

    .line 167
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_a
    if-eqz v9, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    .line 172
    :catch_4
    move-exception v20

    goto/16 :goto_4

    .line 158
    .end local v8           #ex:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    .line 159
    .local v8, ex:Ljava/io/IOException;
    :goto_8
    :try_start_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File reading failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 166
    if-eqz v17, :cond_b

    .line 167
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_b
    if-eqz v9, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_4

    .line 172
    :catch_6
    move-exception v20

    goto/16 :goto_4

    .line 160
    .end local v8           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 161
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    :goto_9
    :try_start_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ran out of memory trying to generate MD5"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 166
    if-eqz v17, :cond_c

    .line 167
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_c
    if-eqz v9, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_4

    .line 172
    :catch_8
    move-exception v20

    goto/16 :goto_4

    .line 162
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    :catch_9
    move-exception v8

    .line 163
    .local v8, ex:Ljava/lang/Exception;
    :goto_a
    :try_start_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while attempting to generate MD5 from file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 166
    if-eqz v17, :cond_d

    .line 167
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_d
    if-eqz v9, :cond_4

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_4

    .line 172
    :catch_a
    move-exception v20

    goto/16 :goto_4

    .line 165
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 166
    :goto_b
    if-eqz v17, :cond_e

    .line 167
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->close()V

    .line 169
    :cond_e
    if-eqz v9, :cond_f

    .line 170
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 173
    :cond_f
    :goto_c
    throw v20

    .line 172
    :catch_b
    move-exception v21

    goto :goto_c

    .line 165
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v6       #digest:Ljava/security/MessageDigest;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v15       #messageDigest:[B
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v20

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_b

    .line 162
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    :catch_c
    move-exception v8

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 160
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v8

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto :goto_9

    .line 158
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    :catch_10
    move-exception v8

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :catch_11
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 156
    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    :catch_12
    move-exception v8

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .end local v17           #stream:Ljava/io/BufferedInputStream;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/BufferedInputStream;
    :catch_13
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #stream:Ljava/io/BufferedInputStream;
    .restart local v17       #stream:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 172
    .end local v6           #digest:Ljava/security/MessageDigest;
    .end local v15           #messageDigest:[B
    .local v8, ex:Ljava/security/NoSuchAlgorithmException;
    :catch_14
    move-exception v20

    goto/16 :goto_4

    .line 154
    .end local v8           #ex:Ljava/security/NoSuchAlgorithmException;
    :catch_15
    move-exception v8

    goto/16 :goto_3

    .end local v9           #fileStream:Ljava/io/FileInputStream;
    .restart local v6       #digest:Ljava/security/MessageDigest;
    .restart local v10       #fileStream:Ljava/io/FileInputStream;
    .restart local v15       #messageDigest:[B
    :catch_16
    move-exception v8

    move-object v9, v10

    .end local v10           #fileStream:Ljava/io/FileInputStream;
    .restart local v9       #fileStream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static final md5([B)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v6, ""

    .line 95
    :goto_0
    return-object v6

    .line 75
    :cond_0
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 76
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 80
    .local v5, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v3, hexString:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 82
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, b:Ljava/lang/String;
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    .end local v0           #b:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 90
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #messageDigest:[B
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "Error getting the md5!!"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 95
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_2
    const-string v6, ""

    goto :goto_0

    .line 92
    :catch_1
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/OutOfMemoryError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of Memory attempting to generate an MD5: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static final secretDecrypt([B[B)Ljava/lang/String;
    .locals 5
    .parameter "raw"
    .parameter "secret"

    .prologue
    .line 338
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 339
    .local v2, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 340
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 341
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #key:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Unpacking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 345
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final secretEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .parameter "message"
    .parameter "secret"

    .prologue
    .line 314
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 315
    .local v2, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 316
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 321
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #key:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Bundling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final secretEncrypt(Ljava/lang/String;[B)[B
    .locals 5
    .parameter "message"
    .parameter "secret"

    .prologue
    .line 326
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 327
    .local v2, key:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 328
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 333
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #key:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Bundling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    .line 198
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 199
    .local v1, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 200
    .local v2, result:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 202
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 209
    .end local v0           #i:I
    .end local v1           #mDigest:Ljava/security/MessageDigest;
    .end local v2           #result:[B
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 207
    :catch_0
    move-exception v4

    .line 209
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 206
    :catch_1
    move-exception v4

    goto :goto_2

    .line 205
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public static shrinkUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uuidString"

    .prologue
    .line 432
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 434
    .local v2, uuid:Ljava/util/UUID;
    invoke-static {v2}, Lcom/nuance/swype/connect/util/EncryptUtils;->asByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    .line 435
    .local v0, array:[B
    const/16 v3, 0x9

    invoke-static {v0, v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->encodeByteArray([BI)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, encodedString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "data"

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v4, v5, [B

    .line 419
    .local v4, result:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 420
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, num:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 422
    .local v1, high:I
    and-int/lit16 v1, v1, 0xff

    .line 423
    div-int/lit8 v5, v2, 0x2

    int-to-byte v6, v1

    aput-byte v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 426
    .end local v1           #high:I
    .end local v3           #num:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 427
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v4           #result:[B
    :cond_0
    return-object v4
.end method
