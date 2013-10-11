.class public Lcom/android/server/ssrm/PolicyCreator;
.super Ljava/lang/Object;
.source "PolicyCreator.java"


# static fields
.field private static final AUTH_KEY_STRING:Ljava/lang/String; = "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

#the value of this static final field might be set in the static constructor
.field static final BUILD_TYPE_ENG:Z = false

.field private static final ENCRYPT_POLICY_FILE_PATH:Ljava/lang/String; = "/data/system/encrypt_ssrm_policy.xml"

.field static final INTERMEDIATE_DECRYPT_FILE_PATH:Ljava/lang/String; = "/data/system/temp.xml"

.field static final POLICY_FILE_PATH:Ljava/lang/String; = "/data/system/ssrm_policy.xml"

.field private static final SIOPFileName:Ljava/lang/String; = "siop_ja_xx"

.field private static final SSRMFileName:Ljava/lang/String; = "ssrm_jbp_xx"

.field static final TAG:Ljava/lang/String; = "XMLPolicyCreator"

.field private static final TEST_POLICY_PATH:Ljava/lang/String; = "/data/system/ssrm_policy_test.xml"

.field private static isEngConvertedToUser:Z

.field private static policyCreator:Lcom/android/server/ssrm/PolicyCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    .line 68
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LoadRawFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 211
    .local v4, resources:Landroid/content/res/Resources;
    const-string v5, "raw"

    const-string v6, "android"

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 212
    .local v3, resID:I
    const-string v5, "XMLPolicyCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " LoadRawFile :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resID is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 222
    .local v1, iS:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 224
    .local v0, buffer:[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 226
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v2, oS:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 231
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 234
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0           #buffer:[B
    .end local v1           #iS:Ljava/io/InputStream;
    .end local v2           #oS:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v5

    .line 217
    :cond_0
    const-string v5, "XMLPolicyCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Resource found :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, ""

    goto :goto_0
.end method

.method private createPolicyFileEng()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isTestPolicyXMLExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isValidFingerPrint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deletePolicyFile()V

    .line 130
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileUser()V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    goto :goto_0
.end method

.method private createPolicyFileUser()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isValidFingerPrint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deleteEncriptedFile()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isEncryptedPolicyXMLExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    .line 149
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->encryptPolicyFile()V

    .line 150
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deletePolicyFile()V

    .line 153
    :cond_1
    return-void
.end method

.method private deleteEncriptedFile()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/encrypt_ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    return-void
.end method

.method private deletePolicyFile()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    return-void
.end method

.method private static deleteTempFile()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    return-void
.end method

.method private encryptPolicyFile()V
    .locals 25

    .prologue
    .line 248
    const/4 v11, 0x0

    .line 249
    .local v11, fos:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 250
    .local v9, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 252
    .local v4, cis:Ljavax/crypto/CipherInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/system/ssrm_policy.xml"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_d

    .line 254
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v18, Ljava/io/File;

    const-string v22, "/data/system/encrypt_ssrm_policy.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v18, outfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1e

    move-result v22

    if-nez v22, :cond_0

    .line 258
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1e

    .line 264
    :cond_0
    :goto_0
    :try_start_3
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1e

    .line 266
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    const-string v22, "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 267
    .local v16, keySpec:Ljavax/crypto/spec/PBEKeySpec;
    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v15

    .line 268
    .local v15, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual/range {v15 .. v16}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 270
    .local v14, key:Ljavax/crypto/SecretKey;
    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    .line 271
    .local v17, md:Ljava/security/MessageDigest;
    const-string v22, "ssrmpolicy"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 272
    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 273
    .local v6, digest:[B
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 274
    .local v21, salt:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 275
    aget-byte v22, v6, v13

    aput-byte v22, v21, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_31
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_22
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_1f

    .line 274
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 259
    .end local v6           #digest:[B
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v21           #salt:[B
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 260
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    const-string v22, "XMLPolicyCreator"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "encryptPolicyFile:: e = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_1e

    goto :goto_0

    .line 284
    .end local v7           #e:Ljava/io/IOException;
    .end local v18           #outfile:Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v9, v10

    .line 285
    .end local v10           #fis:Ljava/io/FileInputStream;
    .local v8, fe:Ljava/io/FileNotFoundException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    if-eqz v11, :cond_1

    .line 301
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 303
    :cond_1
    if-eqz v9, :cond_2

    .line 304
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 306
    :cond_2
    if-eqz v4, :cond_3

    .line 307
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1d

    .line 313
    .end local v8           #fe:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    return-void

    .line 276
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #outfile:Ljava/io/File;
    .restart local v21       #salt:[B
    :cond_4
    :try_start_8
    new-instance v19, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v22, 0x14

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 277
    .local v19, paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 278
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 279
    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v10, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_31
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_8} :catch_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_25
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_1f

    .line 280
    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .local v5, cis:Ljavax/crypto/CipherInputStream;
    :goto_4
    :try_start_9
    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v20

    .local v20, read:I
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 281
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 282
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_9} :catch_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9 .. :try_end_9} :catch_23
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_20

    goto :goto_4

    .line 284
    .end local v20           #read:I
    :catch_2
    move-exception v8

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 300
    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #read:I
    :cond_5
    if-eqz v12, :cond_6

    .line 301
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 303
    :cond_6
    if-eqz v10, :cond_7

    .line 304
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 306
    :cond_7
    if-eqz v5, :cond_8

    .line 307
    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    :cond_8
    :goto_5
    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .line 312
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 286
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #read:I
    .end local v21           #salt:[B
    :catch_3
    move-exception v7

    .line 287
    .local v7, e:Ljava/security/InvalidKeyException;
    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 300
    if-eqz v11, :cond_9

    .line 301
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1b

    .line 303
    :cond_9
    if-eqz v9, :cond_a

    .line 304
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c

    .line 306
    :cond_a
    if-eqz v4, :cond_3

    .line 307
    :try_start_e
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_3

    .line 309
    :catch_4
    move-exception v7

    .line 310
    .local v7, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 288
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 289
    .local v7, e:Ljava/security/NoSuchAlgorithmException;
    :goto_8
    :try_start_f
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 300
    if-eqz v11, :cond_b

    .line 301
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    .line 303
    :cond_b
    if-eqz v9, :cond_c

    .line 304
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a

    .line 306
    :cond_c
    if-eqz v4, :cond_3

    .line 307
    :try_start_12
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_3

    .line 309
    :catch_6
    move-exception v7

    goto :goto_7

    .line 290
    .end local v7           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_7
    move-exception v7

    .line 291
    .local v7, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_9
    :try_start_13
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 300
    if-eqz v11, :cond_d

    .line 301
    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    .line 303
    :cond_d
    if-eqz v9, :cond_e

    .line 304
    :try_start_15
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_18

    .line 306
    :cond_e
    if-eqz v4, :cond_3

    .line 307
    :try_start_16
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_3

    .line 309
    :catch_8
    move-exception v7

    goto :goto_7

    .line 292
    .end local v7           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_9
    move-exception v7

    .line 293
    .local v7, e:Ljava/io/IOException;
    :goto_a
    :try_start_17
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 300
    if-eqz v11, :cond_f

    .line 301
    :try_start_18
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    .line 303
    :cond_f
    if-eqz v9, :cond_10

    .line 304
    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16

    .line 306
    :cond_10
    if-eqz v4, :cond_3

    .line 307
    :try_start_1a
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    goto/16 :goto_3

    .line 309
    :catch_a
    move-exception v7

    goto :goto_7

    .line 294
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 295
    .local v7, e:Ljava/security/spec/InvalidKeySpecException;
    :goto_b
    :try_start_1b
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 300
    if-eqz v11, :cond_11

    .line 301
    :try_start_1c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 303
    :cond_11
    if-eqz v9, :cond_12

    .line 304
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 306
    :cond_12
    if-eqz v4, :cond_3

    .line 307
    :try_start_1e
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_c

    goto/16 :goto_3

    .line 309
    :catch_c
    move-exception v7

    goto :goto_7

    .line 296
    .end local v7           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_d
    move-exception v7

    .line 297
    .local v7, e:Ljava/security/InvalidAlgorithmParameterException;
    :goto_c
    :try_start_1f
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 300
    if-eqz v11, :cond_13

    .line 301
    :try_start_20
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_11

    .line 303
    :cond_13
    if-eqz v9, :cond_14

    .line 304
    :try_start_21
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_12

    .line 306
    :cond_14
    if-eqz v4, :cond_3

    .line 307
    :try_start_22
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e

    goto/16 :goto_3

    .line 309
    :catch_e
    move-exception v7

    goto :goto_7

    .line 299
    .end local v7           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catchall_0
    move-exception v22

    .line 300
    :goto_d
    if-eqz v11, :cond_15

    .line 301
    :try_start_23
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 303
    :cond_15
    if-eqz v9, :cond_16

    .line 304
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 306
    :cond_16
    if-eqz v4, :cond_17

    .line 307
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_f

    .line 299
    :cond_17
    :goto_e
    throw v22

    .line 309
    :catch_f
    move-exception v7

    .line 310
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 309
    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #outfile:Ljava/io/File;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #read:I
    .restart local v21       #salt:[B
    :catch_10
    move-exception v7

    .line 310
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 309
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .end local v6           #digest:[B
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #read:I
    .end local v21           #salt:[B
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    .local v7, e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v7

    goto/16 :goto_7

    :catch_12
    move-exception v7

    goto/16 :goto_7

    .local v7, e:Ljava/security/spec/InvalidKeySpecException;
    :catch_13
    move-exception v7

    goto/16 :goto_7

    :catch_14
    move-exception v7

    goto/16 :goto_7

    .local v7, e:Ljava/io/IOException;
    :catch_15
    move-exception v7

    goto/16 :goto_7

    :catch_16
    move-exception v7

    goto/16 :goto_7

    .local v7, e:Ljavax/crypto/NoSuchPaddingException;
    :catch_17
    move-exception v7

    goto/16 :goto_7

    :catch_18
    move-exception v7

    goto/16 :goto_7

    .local v7, e:Ljava/security/NoSuchAlgorithmException;
    :catch_19
    move-exception v7

    goto/16 :goto_7

    :catch_1a
    move-exception v7

    goto/16 :goto_7

    .local v7, e:Ljava/security/InvalidKeyException;
    :catch_1b
    move-exception v7

    goto/16 :goto_7

    :catch_1c
    move-exception v7

    goto/16 :goto_7

    .end local v7           #e:Ljava/security/InvalidKeyException;
    .restart local v8       #fe:Ljava/io/FileNotFoundException;
    :catch_1d
    move-exception v7

    goto/16 :goto_7

    .line 299
    .end local v8           #fe:Ljava/io/FileNotFoundException;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v22

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_d

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catchall_2
    move-exception v22

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catchall_3
    move-exception v22

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 296
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_1e
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_c

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_1f
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_20
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 294
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_21
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_22
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_23
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 292
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_24
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_25
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_26
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 290
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_27
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_28
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_29
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 288
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_2a
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_2b
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_2c
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 286
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_2d
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_2e
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v6       #digest:[B
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v19       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v21       #salt:[B
    :catch_2f
    move-exception v7

    move-object v4, v5

    .end local v5           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 284
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #digest:[B
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #outfile:Ljava/io/File;
    .end local v19           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21           #salt:[B
    :catch_30
    move-exception v8

    goto/16 :goto_2

    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #outfile:Ljava/io/File;
    :catch_31
    move-exception v8

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private generatePolicyFile()V
    .locals 10

    .prologue
    .line 156
    const-string v0, ""

    .line 157
    .local v0, SIOPPolicy:Ljava/lang/String;
    const-string v1, ""

    .line 160
    .local v1, SSRMPolicy:Ljava/lang/String;
    :try_start_0
    const-string v7, "siop_ja_xx"

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/PolicyCreator;->LoadRawFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v7, "ssrm_jbp_xx"

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/PolicyCreator;->LoadRawFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 168
    const-string v7, "XMLPolicyCreator"

    const-string v8, "Empty raw Policy Files, Returning!!!"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v4

    .line 163
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v4           #e:Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x0

    .line 173
    .local v5, fw:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 175
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/data/system/ssrm_policy.xml"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 178
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<PowerFramework fingerprint=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 180
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 181
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 184
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 185
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    :cond_3
    const-string v7, "</PowerFramework>\n"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 193
    if-eqz v3, :cond_4

    .line 194
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 195
    :cond_4
    if-eqz v6, :cond_5

    .line 196
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_2
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 201
    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_1

    .line 188
    :catch_1
    move-exception v4

    .line 189
    .restart local v4       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    if-eqz v2, :cond_6

    .line 194
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 195
    :cond_6
    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 197
    :catch_2
    move-exception v4

    .line 198
    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 192
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 193
    :goto_4
    if-eqz v2, :cond_7

    .line 194
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 195
    :cond_7
    if-eqz v5, :cond_8

    .line 196
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 192
    :cond_8
    :goto_5
    throw v7

    .line 197
    :catch_3
    move-exception v4

    .line 198
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "XMLPolicyCreator"

    const-string v9, "Error during adding Build Finger:"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 197
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    .line 198
    .restart local v4       #e:Ljava/io/IOException;
    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_4

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_4

    .line 188
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static getDecryptedPolicyPath()Ljava/lang/String;
    .locals 23

    .prologue
    .line 316
    sget-boolean v22, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v22, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 317
    const-string v22, "/data/system/ssrm_policy.xml"

    .line 384
    .local v4, cos:Ljavax/crypto/CipherOutputStream;
    .local v6, decfos:Ljava/io/FileOutputStream;
    .local v10, encfis:Ljava/io/FileInputStream;
    .local v12, encryptedFile:Ljava/io/File;
    .local v21, tempDecrytedFile:Ljava/io/File;
    :goto_0
    return-object v22

    .line 320
    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v12           #encryptedFile:Ljava/io/File;
    .end local v21           #tempDecrytedFile:Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->deleteTempFile()V

    .line 322
    new-instance v21, Ljava/io/File;

    const-string v22, "/data/system/temp.xml"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v21       #tempDecrytedFile:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string v22, "/data/system/encrypt_ssrm_policy.xml"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v12       #encryptedFile:Ljava/io/File;
    const/4 v10, 0x0

    .line 325
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 326
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 329
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 330
    const/16 v22, 0x0

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_5

    .line 334
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 335
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_9

    .line 336
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .local v11, encfis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_18

    .line 338
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .local v7, decfos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    const-string v22, "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 339
    .local v16, keySpec:Ljavax/crypto/spec/PBEKeySpec;
    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v15

    .line 340
    .local v15, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual/range {v15 .. v16}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 341
    .local v14, key:Ljavax/crypto/SecretKey;
    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    .line 342
    .local v17, md:Ljava/security/MessageDigest;
    const-string v22, "ssrmpolicy"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 343
    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 344
    .local v8, digest:[B
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 345
    .local v20, salt:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    .line 346
    aget-byte v22, v8, v13

    aput-byte v22, v20, v13

    .line 345
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 347
    :cond_2
    new-instance v18, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v22, 0x14

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 348
    .local v18, paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 349
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 350
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v7, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_19

    .line 351
    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .local v5, cos:Ljavax/crypto/CipherOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->read()I

    move-result v19

    .local v19, read:I
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 352
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljavax/crypto/CipherOutputStream;->write(I)V

    .line 353
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1a

    goto :goto_2

    .line 356
    .end local v19           #read:I
    :catch_0
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 357
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v11           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .local v9, e:Ljava/io/IOException;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    if-eqz v4, :cond_3

    .line 371
    :try_start_5
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 373
    :cond_3
    if-eqz v10, :cond_4

    .line 374
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 376
    :cond_4
    if-eqz v6, :cond_5

    .line 377
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_17

    .line 384
    .end local v9           #e:Ljava/io/IOException;
    :cond_5
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 370
    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v19       #read:I
    .restart local v20       #salt:[B
    :cond_6
    if-eqz v5, :cond_7

    .line 371
    :try_start_6
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 373
    :cond_7
    if-eqz v11, :cond_8

    .line 374
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 376
    :cond_8
    if-eqz v7, :cond_9

    .line 377
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :cond_9
    :goto_5
    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 382
    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 358
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v19           #read:I
    .end local v20           #salt:[B
    :catch_1
    move-exception v9

    .line 359
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 370
    if-eqz v4, :cond_a

    .line 371
    :try_start_8
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15

    .line 373
    :cond_a
    if-eqz v10, :cond_b

    .line 374
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    .line 376
    :cond_b
    if-eqz v6, :cond_5

    .line 377
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 379
    :catch_2
    move-exception v9

    .line 380
    .local v9, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 360
    .end local v9           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 361
    .local v9, e:Ljava/security/InvalidKeyException;
    :goto_8
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 370
    if-eqz v4, :cond_c

    .line 371
    :try_start_c
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    .line 373
    :cond_c
    if-eqz v10, :cond_d

    .line 374
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    .line 376
    :cond_d
    if-eqz v6, :cond_5

    .line 377
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    .line 379
    :catch_4
    move-exception v9

    goto :goto_7

    .line 362
    .end local v9           #e:Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v9

    .line 363
    .local v9, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_9
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 370
    if-eqz v4, :cond_e

    .line 371
    :try_start_10
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    .line 373
    :cond_e
    if-eqz v10, :cond_f

    .line 374
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    .line 376
    :cond_f
    if-eqz v6, :cond_5

    .line 377
    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_4

    .line 379
    :catch_6
    move-exception v9

    goto :goto_7

    .line 364
    .end local v9           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_7
    move-exception v9

    .line 365
    .local v9, e:Ljava/security/spec/InvalidKeySpecException;
    :goto_a
    :try_start_13
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 370
    if-eqz v4, :cond_10

    .line 371
    :try_start_14
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 373
    :cond_10
    if-eqz v10, :cond_11

    .line 374
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 376
    :cond_11
    if-eqz v6, :cond_5

    .line 377
    :try_start_16
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_4

    .line 379
    :catch_8
    move-exception v9

    goto :goto_7

    .line 366
    .end local v9           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_9
    move-exception v9

    .line 367
    .local v9, e:Ljava/security/InvalidAlgorithmParameterException;
    :goto_b
    :try_start_17
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 370
    if-eqz v4, :cond_12

    .line 371
    :try_start_18
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 373
    :cond_12
    if-eqz v10, :cond_13

    .line 374
    :try_start_19
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 376
    :cond_13
    if-eqz v6, :cond_5

    .line 377
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    goto/16 :goto_4

    .line 379
    :catch_a
    move-exception v9

    goto :goto_7

    .line 369
    .end local v9           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catchall_0
    move-exception v22

    .line 370
    :goto_c
    if-eqz v4, :cond_14

    .line 371
    :try_start_1b
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 373
    :cond_14
    if-eqz v10, :cond_15

    .line 374
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 376
    :cond_15
    if-eqz v6, :cond_16

    .line 377
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 369
    :cond_16
    :goto_d
    throw v22

    .line 379
    :catch_b
    move-exception v9

    .line 380
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 379
    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v19       #read:I
    .restart local v20       #salt:[B
    :catch_c
    move-exception v9

    .line 380
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 379
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .end local v8           #digest:[B
    .end local v11           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v19           #read:I
    .end local v20           #salt:[B
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    .local v9, e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v9

    goto :goto_7

    :catch_e
    move-exception v9

    goto :goto_7

    .local v9, e:Ljava/security/spec/InvalidKeySpecException;
    :catch_f
    move-exception v9

    goto :goto_7

    :catch_10
    move-exception v9

    goto :goto_7

    .local v9, e:Ljavax/crypto/NoSuchPaddingException;
    :catch_11
    move-exception v9

    goto/16 :goto_7

    :catch_12
    move-exception v9

    goto/16 :goto_7

    .local v9, e:Ljava/security/InvalidKeyException;
    :catch_13
    move-exception v9

    goto/16 :goto_7

    :catch_14
    move-exception v9

    goto/16 :goto_7

    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    :catch_15
    move-exception v9

    goto/16 :goto_7

    :catch_16
    move-exception v9

    goto/16 :goto_7

    .local v9, e:Ljava/io/IOException;
    :catch_17
    move-exception v9

    goto/16 :goto_7

    .line 369
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v22

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_c

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v22

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_c

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catchall_3
    move-exception v22

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_c

    .line 366
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_18
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_19
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catch_1a
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_b

    .line 364
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_1b
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_1c
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catch_1d
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 362
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_1e
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catch_20
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 360
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_21
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_22
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catch_23
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 358
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_24
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_25
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v8       #digest:[B
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    .restart local v13       #i:I
    .restart local v14       #key:Ljavax/crypto/SecretKey;
    .restart local v15       #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .restart local v16       #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v17       #md:Ljava/security/MessageDigest;
    .restart local v18       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v20       #salt:[B
    :catch_26
    move-exception v9

    move-object v4, v5

    .end local v5           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 356
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v8           #digest:[B
    .end local v13           #i:I
    .end local v14           #key:Ljavax/crypto/SecretKey;
    .end local v15           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v16           #keySpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v17           #md:Ljava/security/MessageDigest;
    .end local v18           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v20           #salt:[B
    :catch_27
    move-exception v9

    goto/16 :goto_3

    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_28
    move-exception v9

    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v6           #decfos:Ljava/io/FileOutputStream;
    .end local v10           #encfis:Ljava/io/FileInputStream;
    .restart local v7       #decfos:Ljava/io/FileOutputStream;
    .restart local v11       #encfis:Ljava/io/FileInputStream;
    :catch_29
    move-exception v9

    move-object v6, v7

    .end local v7           #decfos:Ljava/io/FileOutputStream;
    .restart local v6       #decfos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #encfis:Ljava/io/FileInputStream;
    .restart local v10       #encfis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static getInstance()Lcom/android/server/ssrm/PolicyCreator;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/server/ssrm/PolicyCreator;

    invoke-direct {v0}, Lcom/android/server/ssrm/PolicyCreator;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    return-object v0
.end method

.method private isEncryptedPolicyXMLExist()Z
    .locals 5

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/encrypt_ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPolicyXMLExist()Z
    .locals 5

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTestPolicyXMLExist()Z
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidFingerPrint()Z
    .locals 3

    .prologue
    .line 238
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ssrm_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, policyFile:Ljava/io/File;
    invoke-static {}, Lcom/android/server/ssrm/PolicyReader;->readFingerPrint()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, fingerPrint:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/4 v2, 0x1

    .line 244
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createPolicyFile()V
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileEng()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileUser()V

    goto :goto_0
.end method

.method public isPolicyFileCreated()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isEncryptedPolicyXMLExist()Z

    move-result v0

    goto :goto_0
.end method

.method public logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 394
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    return-void
.end method
