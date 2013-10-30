.class public Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;
.super Landroid/app/Service;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;,
        Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecoderService"

.field public static USER_UDB_HK_LIB:Ljava/lang/String;

.field public static USER_UDB_KOR_LIB:Ljava/lang/String;

.field public static USER_UDB_SIMPLE_LIB:Ljava/lang/String;

.field public static USER_UDB_TRADITION_LIB:Ljava/lang/String;

.field public static XT9PLIDChineseHongkong:I

.field public static XT9PLIDChineseSimplified:I

.field public static XT9PLIDChineseSingapore:I

.field public static XT9PLIDChineseTraditional:I


# instance fields
.field private final mBinder:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;

.field private mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xe0

    sput v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseTraditional:I

    .line 59
    const/16 v0, 0xe1

    sput v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseSimplified:I

    .line 61
    const/16 v0, 0xe2

    sput v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseHongkong:I

    .line 63
    const/16 v0, 0xe3

    sput v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseSingapore:I

    .line 66
    const-string v0, "simple.lib"

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    .line 67
    const-string v0, "tradition.lib"

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    .line 68
    const-string v0, "traditionHk.lib"

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    .line 69
    const-string v0, "korean.lib"

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_KOR_LIB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 417
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;-><init>(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mBinder:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->storeUdbToFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    return-object v0
.end method

.method public static imIsHKTWModel()Z
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 406
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    .line 408
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HKTW_DISTINGUISH_BY_CSC:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 409
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v0

    goto :goto_0

    .line 411
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initUdbFile()V
    .locals 19

    .prologue
    .line 209
    const/4 v11, 0x0

    .line 210
    .local v11, simplecache:[B
    const/4 v12, 0x0

    .line 211
    .local v12, traditionCache:[B
    const/4 v4, 0x0

    .line 212
    .local v4, hkCache:[B
    const/4 v1, 0x0

    .line 213
    .local v1, KorCache:[B
    const/4 v2, 0x0

    .line 216
    .local v2, count:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, simpleLibPath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v9, simpleLibFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 223
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1b6

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 230
    sget-object v15, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v11

    .line 231
    array-length v2, v11

    .line 233
    if-lez v2, :cond_1

    invoke-static {v11, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v15

    if-nez v15, :cond_1

    .line 234
    const-string v15, "SamsungDecoderService"

    const-string v16, "simple udb open fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 240
    .local v14, traditionLibPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v13, traditionLibFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 244
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 245
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1b6

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :cond_2
    :goto_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 252
    sget-object v15, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v12

    .line 253
    array-length v2, v12

    .line 254
    if-lez v2, :cond_3

    invoke-static {v12, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v15

    if-nez v15, :cond_3

    .line 255
    const-string v15, "SamsungDecoderService"

    const-string v16, "tradition udb open fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, hkLibPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v5, hkLibFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 265
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 267
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1b6

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 274
    sget-object v15, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v4

    .line 275
    array-length v2, v4

    .line 277
    if-lez v2, :cond_5

    invoke-static {v4, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNOpenUdbCache([BI)Z

    move-result v15

    if-nez v15, :cond_5

    .line 278
    const-string v15, "SamsungDecoderService"

    const-string v16, "simple udb open fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_KOR_LIB:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, koreanLibPath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v7, koreanLibFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    .line 288
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 290
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1b6

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 296
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 297
    sget-object v15, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_KOR_LIB:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->readUdbFromFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 298
    array-length v2, v1

    .line 300
    if-lez v2, :cond_7

    invoke-static {v1, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9KOROpenUdbCache([BI)Z

    move-result v15

    if-nez v15, :cond_7

    .line 301
    const-string v15, "SamsungDecoderService"

    const-string v16, "simple udb open fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_7
    const/4 v1, 0x0

    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    const/4 v4, 0x0

    .line 309
    return-void

    .line 224
    .end local v5           #hkLibFile:Ljava/io/File;
    .end local v6           #hkLibPath:Ljava/lang/String;
    .end local v7           #koreanLibFile:Ljava/io/File;
    .end local v8           #koreanLibPath:Ljava/lang/String;
    .end local v13           #traditionLibFile:Ljava/io/File;
    .end local v14           #traditionLibPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 225
    .local v3, e:Ljava/io/IOException;
    const-string v15, "initUdbFile"

    const-string v16, "simpleLibFile fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 246
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #traditionLibFile:Ljava/io/File;
    .restart local v14       #traditionLibPath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 247
    .restart local v3       #e:Ljava/io/IOException;
    const-string v15, "initUdbFile"

    const-string v16, "traditionLibFile fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 268
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #hkLibFile:Ljava/io/File;
    .restart local v6       #hkLibPath:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 269
    .restart local v3       #e:Ljava/io/IOException;
    const-string v15, "initUdbFile"

    const-string v16, "hkLibFile fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 291
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #koreanLibFile:Ljava/io/File;
    .restart local v8       #koreanLibPath:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 292
    .restart local v3       #e:Ljava/io/IOException;
    const-string v15, "initUdbFile"

    const-string v16, "koreanLibFile fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private initXT9Engine()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9Init(Landroid/content/res/AssetManager;)Z

    .line 190
    return-void
.end method

.method static native nativeImXT9AWChoosePhrase(I)I
.end method

.method static native nativeImXT9AWGetDefaultActiveIndex()I
.end method

.method static native nativeImXT9AWReset()V
.end method

.method static native nativeImXT9AddMdb(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native nativeImXT9CHNAddOneChar(C)I
.end method

.method static native nativeImXT9CHNChoosePhrase(I)I
.end method

.method static native nativeImXT9CHNDelUDBPhrase(I)Z
.end method

.method static native nativeImXT9CHNEnableErrorCorrect(Z)I
.end method

.method static native nativeImXT9CHNEnableFullSentence(Z)I
.end method

.method static native nativeImXT9CHNFreeUdbBuf()V
.end method

.method static native nativeImXT9CHNGetPhrase(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V
.end method

.method static native nativeImXT9CHNGetPrefix(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetPrefixCount()I
.end method

.method static native nativeImXT9CHNGetRefinedSpell()Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSpell()Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSuffix(I)Ljava/lang/String;
.end method

.method static native nativeImXT9CHNGetSuffixCount()I
.end method

.method static native nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B
.end method

.method static native nativeImXT9CHNLoadLDBNum(I)V
.end method

.method static native nativeImXT9CHNOpenUdbCache([BI)Z
.end method

.method static native nativeImXT9CHNPYEnableMohuPairs(I)I
.end method

.method static native nativeImXT9CHNPreparePrediction(Ljava/lang/String;)I
.end method

.method static native nativeImXT9CHNProcessBackspace()I
.end method

.method static native nativeImXT9CHNReset()V
.end method

.method static native nativeImXT9CHNSTREnableComponent(Z)I
.end method

.method static native nativeImXT9CHNSetActivePrefix(I)I
.end method

.method static native nativeImXT9CHNSetActiveSuffix(I)I
.end method

.method static native nativeImXT9CHNSetInputMode(IZ)I
.end method

.method static native nativeImXT9CHNSetMdbPriorityHigh(Z)I
.end method

.method static native nativeImXT9CHNSetSKBValue(II)V
.end method

.method static native nativeImXT9DeleteMdb(Ljava/lang/String;)I
.end method

.method static native nativeImXT9Exit()Z
.end method

.method static native nativeImXT9ExportMdb(Ljava/lang/String;)I
.end method

.method static native nativeImXT9ImportMdb(Ljava/lang/String;)I
.end method

.method static native nativeImXT9Init(Landroid/content/res/AssetManager;)Z
.end method

.method static native nativeImXT9KORChoosePhrase(I)I
.end method

.method static native nativeImXT9KORFreeUdbBuf()V
.end method

.method static native nativeImXT9KORGetDefaultActiveIndex()I
.end method

.method static native nativeImXT9KORGetUdbCache()[B
.end method

.method static native nativeImXT9KOROpenUdbCache([BI)Z
.end method

.method static native nativeImXT9ResetMdb()I
.end method

.method static native nativeXT9AWClearInput()I
.end method

.method static native nativeXT9AWDelSearch()I
.end method

.method static native nativeXT9AWGetNumSymbs()I
.end method

.method static native nativeXT9AWGetPhrase(I)Ljava/lang/String;
.end method

.method static native nativeXT9AWSearch(C)I
.end method

.method static native nativeXT9AWSetCapsLock()I
.end method

.method static native nativeXT9AWSetInputMode(IZ)I
.end method

.method static native nativeXT9AWSetSKBValue(II)V
.end method

.method static native nativeXT9AWSetShift()I
.end method

.method static native nativeXT9AWSetShiftMode(I)I
.end method

.method static native nativeXT9AWSetUnShift()I
.end method

.method static native nativeXT9KORClearInput()I
.end method

.method static native nativeXT9KORDecodeHangul(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native nativeXT9KORDelSearch()I
.end method

.method static native nativeXT9KORDeletePreSyms(I)I
.end method

.method static native nativeXT9KORFillContext(Ljava/lang/String;)I
.end method

.method static native nativeXT9KORGetCompleteLength()I
.end method

.method static native nativeXT9KORGetPhrase(IZ)Ljava/lang/String;
.end method

.method static native nativeXT9KORSearch(C)I
.end method

.method static native nativeXT9KORSetInputMode(IZ)I
.end method

.method static native nativeXT9KORSetSKBValue(II)V
.end method

.method static native nativeXT9KORSetShift()I
.end method

.method static native nativeXT9KORSetUnShift()I
.end method

.method private storeUdbToFile()V
    .locals 5

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, simpleStoreBuf:[B
    const/4 v2, 0x0

    .line 315
    .local v2, TraditionStoreBuf:[B
    const/4 v0, 0x0

    .line 316
    .local v0, HkStoreBuf:[B
    const/4 v1, 0x0

    .line 320
    .local v1, KorStoreBuf:[B
    const-string v4, "zh_CN"

    invoke-static {v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v3

    .line 321
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 322
    sget-object v4, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_SIMPLE_LIB:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 330
    :cond_0
    const-string v4, "zh_TW"

    invoke-static {v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v2

    .line 331
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 332
    sget-object v4, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_TRADITION_LIB:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 337
    :cond_1
    const-string v4, "zh_HK"

    invoke-static {v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetUdbCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 339
    sget-object v4, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_HK_LIB:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 344
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9KORGetUdbCache()[B

    move-result-object v1

    .line 345
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 346
    sget-object v4, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->USER_UDB_KOR_LIB:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->writeUdbToFile([BLjava/lang/String;)V

    .line 350
    :cond_3
    const/4 v3, 0x0

    .line 351
    const/4 v2, 0x0

    .line 352
    const/4 v0, 0x0

    .line 354
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mBinder:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 195
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->initUdbFile()V

    .line 196
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;-><init>(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    .line 197
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->initXT9Engine()V

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9Exit()Z

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 204
    return-void
.end method

.method public readUdbFromFile(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"

    .prologue
    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, myFileStream:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 361
    .local v2, inputBuffer:[B
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 362
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 363
    .local v0, count:I
    new-array v2, v0, [B

    .line 364
    if-eqz v3, :cond_0

    .line 365
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .end local v0           #count:I
    :goto_0
    return-object v2

    .line 371
    .restart local v0       #count:I
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v0           #count:I
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 367
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 371
    :catch_2
    move-exception v1

    .line 372
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 370
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 373
    :goto_1
    throw v4

    .line 371
    :catch_3
    move-exception v1

    .line 372
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeUdbToFile([BLjava/lang/String;)V
    .locals 3
    .parameter "buf"
    .parameter "path"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, myFileStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :cond_0
    if-eqz v1, :cond_1

    .line 393
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 387
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    if-eqz v1, :cond_1

    .line 393
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 395
    :catch_2
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 392
    if-eqz v1, :cond_2

    .line 393
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 398
    :cond_2
    :goto_1
    throw v2

    .line 395
    :catch_3
    move-exception v0

    .line 397
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
