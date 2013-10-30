.class public Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;,
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;,
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "SAMSUNG-KLDownloaderManager-Sample-1.0"

.field public static final CUSTOM_STRING:Ljava/lang/String; = "EXAMPLESTRING"

.field private static final DEBUG:Z = true

.field public static DLManger:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager; = null

.field private static final LDB_FILE_1:Ljava/lang/String; = "english.ldb"

.field private static final LDB_FILE_2:Ljava/lang/String; = "simplified_chinese.ldb"

.field private static final LDB_FILE_3:Ljava/lang/String; = "traditional_hk.ldb"

.field private static final LDB_FILE_4:Ljava/lang/String; = "traditional_tw.ldb"

.field private static final LDB_FILE_5:Ljava/lang/String; = "korean_default.ldb"

.field private static final LDB_FILE_6:Ljava/lang/String; = "korean_CJI.ldb"

.field private static final SIME_DB_PATH:Ljava/lang/String; = "xt9db/"

.field private static final SIME_DB_SIZE_K:I = 0x400

.field private static final SIME_LDB_CHN_HK_NAME:Ljava/lang/String; = "traditional_hk.ldb"

.field private static final SIME_LDB_CHN_SIMPLIFY_NAME:Ljava/lang/String; = "simplified_chinese.ldb"

.field private static final SIME_LDB_CHN_TW_NAME:Ljava/lang/String; = "traditional_tw.ldb"

.field private static final SIME_LDB_DOWNLOAD_DIR:Ljava/lang/String; = "/data/data/com.samsung.inputmethod/ldb/"

.field private static final SIME_LDB_ENGLISH_NAME:Ljava/lang/String; = "english.ldb"

.field private static final SIME_LDB_KOR_NAME1:Ljava/lang/String; = "korean_default.ldb"

.field private static final SIME_LDB_KOR_NAME2:Ljava/lang/String; = "korean_CJI.ldb"

.field public static final STOP_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "SimeXt9DLManager"

.field public static final XT9CORE_VERSION:Ljava/lang/String; = "9.3"


# instance fields
.field private LangListRun:Ljava/lang/Runnable;

.field private langCB:Lcom/nuance/connect/language/KLLanguageCallback;

.field private mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

.field private mConnectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

.field private mDevice:Lcom/nuance/connect/language/KLDeviceService;

.field private mDeviceCallback:Lcom/nuance/connect/language/KLDeviceCallback;

.field private mDownloadCBs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIme:Landroid/content/Context;

.field private mIsHotwords:Z

.field private mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

.field private mLanguage:Lcom/nuance/connect/language/KLLanguageService;

.field private mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

.field private mManager:Lcom/nuance/connect/language/KLManager;

.field private mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

.field private stopKLManagerRun:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    .line 61
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    .line 139
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->langCB:Lcom/nuance/connect/language/KLLanguageCallback;

    .line 155
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$4;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->LangListRun:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$5;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    .line 82
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KLDownloadManager constructor app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIme:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.samsung.inputmethod/ldb/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->setConnectionCB(Lcom/nuance/connect/language/KLConnectionCallback;)V

    .line 112
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$2;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->setDeviceCB(Lcom/nuance/connect/language/KLDeviceCallback;)V

    .line 123
    return-void
.end method

.method private CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "strSrc"
    .parameter "strDst"
    .parameter "bDelSrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 897
    const-string v7, "SimeXt9DLManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CopyFile strSrc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strDst = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    .local v4, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 902
    const-string v7, "SimeXt9DLManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy file: Src file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exits!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :goto_0
    return v6

    .line 906
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 907
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 909
    :cond_1
    const/4 v3, 0x0

    .line 910
    .local v3, from:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 912
    .local v5, to:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3           #from:Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 913
    .restart local v3       #from:Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    .end local v5           #to:Ljava/io/BufferedOutputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 915
    .restart local v5       #to:Ljava/io/BufferedOutputStream;
    const/16 v7, 0x2800

    new-array v0, v7, [B

    .line 916
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 917
    .local v1, bytesRead:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 918
    invoke-virtual {v5, v0, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 919
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 921
    if-eqz v3, :cond_3

    .line 922
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 923
    :cond_3
    if-eqz v5, :cond_4

    .line 924
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 926
    :cond_4
    if-eqz p3, :cond_5

    .line 927
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 928
    :cond_5
    const-string v6, "SimeXt9DLManager"

    const-string v7, "CopyFile return = True"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    return-object p1
.end method

.method private checkStop()Z
    .locals 4

    .prologue
    .line 792
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 793
    :cond_0
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 795
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extractAssetFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 810
    const/4 v4, 0x0

    .line 811
    .local v4, rawInput:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 812
    .local v5, rawOutput:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 814
    .local v2, output:Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIme:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 815
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 817
    .local v1, input:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v6, p2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 818
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .local v6, rawOutput:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 820
    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .local v3, output:Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v7

    .line 821
    .local v7, readByte:I
    :goto_0
    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 822
    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 823
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result v7

    goto :goto_0

    .line 828
    :cond_0
    if-eqz v6, :cond_1

    .line 830
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 835
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 837
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 842
    :cond_2
    :goto_2
    if-eqz v3, :cond_9

    .line 844
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v3

    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 849
    .end local v1           #input:Ljava/io/BufferedInputStream;
    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .end local v7           #readByte:I
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return-void

    .line 845
    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v1       #input:Ljava/io/BufferedInputStream;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    .restart local v7       #readByte:I
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 846
    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 825
    .end local v1           #input:Ljava/io/BufferedInputStream;
    .end local v7           #readByte:I
    :catch_1
    move-exception v0

    .line 826
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error extracting ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 828
    if-eqz v5, :cond_4

    .line 830
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 835
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 837
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 842
    :cond_5
    :goto_6
    if-eqz v2, :cond_3

    .line 844
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 845
    :catch_2
    move-exception v8

    goto :goto_3

    .line 828
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    if-eqz v5, :cond_6

    .line 830
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 835
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 837
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 842
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 844
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 846
    :cond_8
    :goto_a
    throw v8

    .line 831
    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v1       #input:Ljava/io/BufferedInputStream;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    .restart local v7       #readByte:I
    :catch_3
    move-exception v8

    goto :goto_1

    .line 838
    :catch_4
    move-exception v8

    goto :goto_2

    .line 831
    .end local v1           #input:Ljava/io/BufferedInputStream;
    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .end local v7           #readByte:I
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 838
    :catch_6
    move-exception v8

    goto :goto_6

    .line 831
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_8

    .line 838
    :catch_8
    move-exception v9

    goto :goto_9

    .line 845
    :catch_9
    move-exception v9

    goto :goto_a

    .line 828
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v1       #input:Ljava/io/BufferedInputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 825
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v5, v6

    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #output:Ljava/io/BufferedOutputStream;
    .end local v5           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v6       #rawOutput:Ljava/io/FileOutputStream;
    .restart local v7       #readByte:I
    :cond_9
    move-object v2, v3

    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .restart local v2       #output:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #rawOutput:Ljava/io/FileOutputStream;
    .restart local v5       #rawOutput:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static getLanguageDLManager(Landroid/content/Context;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 933
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->DLManger:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->DLManger:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    .line 936
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->DLManger:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    return-object v0
.end method

.method private startManager()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 466
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "SimeXt9DLManager"

    const-string v3, "State error: Tried to create KLManager again"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 523
    :goto_0
    return v1

    .line 471
    :cond_0
    new-instance v1, Lcom/nuance/connect/language/KLManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIme:Landroid/content/Context;

    const-string v5, "SAMSUNG-KLDownloaderManager-Sample-1.0"

    invoke-direct {v1, v4, v5}, Lcom/nuance/connect/language/KLManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    .line 472
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    if-nez v1, :cond_1

    .line 473
    const-string v1, "SimeXt9DLManager"

    const-string v3, "Could not get the manager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 474
    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "EXAMPLESTRING"

    invoke-virtual {v1, v4}, Lcom/nuance/connect/language/KLManager;->setCustomerString(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v4}, Lcom/nuance/connect/language/KLManager;->getConfiguration()Lcom/nuance/connect/language/KLConfiguration;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;->setConfigurations(Lcom/nuance/connect/language/KLConfiguration;)V

    .line 479
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConnectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    invoke-virtual {v1, v4}, Lcom/nuance/connect/language/KLManager;->registerConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V

    .line 481
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "9.3"

    const-string v5, "9.3"

    const-string v6, "9.3"

    invoke-virtual {v1, v4, v5, v7, v6}, Lcom/nuance/connect/language/KLManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->isConnectStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->start()V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_2
    :goto_1
    const-string v1, "SimeXt9DLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManager()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_1
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "LANGUAGE"

    invoke-virtual {v1, v4}, Lcom/nuance/connect/language/KLManager;->getService(Ljava/lang/String;)Lcom/nuance/connect/language/KLService;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/language/KLLanguageService;

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    .line 494
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "DEVICE"

    invoke-virtual {v1, v4}, Lcom/nuance/connect/language/KLManager;->getService(Ljava/lang/String;)Lcom/nuance/connect/language/KLService;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/language/KLDeviceService;

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDevice:Lcom/nuance/connect/language/KLDeviceService;
    :try_end_1
    .catch Lcom/nuance/connect/language/KLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    if-nez v1, :cond_3

    .line 500
    const-string v1, "SimeXt9DLManager"

    const-string v3, "Could not get the language service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->stop()V

    .line 503
    iput-object v7, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    move v1, v2

    .line 504
    goto/16 :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Lcom/nuance/connect/language/KLException;
    const-string v1, "SimeXt9DLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 495
    .end local v0           #e:Lcom/nuance/connect/language/KLException;
    :catch_1
    move-exception v0

    .line 496
    .restart local v0       #e:Lcom/nuance/connect/language/KLException;
    const-string v1, "SimeXt9DLManager"

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 507
    .end local v0           #e:Lcom/nuance/connect/language/KLException;
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDevice:Lcom/nuance/connect/language/KLDeviceService;

    if-nez v1, :cond_4

    .line 508
    const-string v1, "SimeXt9DLManager"

    const-string v3, "Could not get the device service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->stop()V

    .line 511
    iput-object v7, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    move v1, v2

    .line 512
    goto/16 :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDevice:Lcom/nuance/connect/language/KLDeviceService;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDeviceCallback:Lcom/nuance/connect/language/KLDeviceCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/language/KLDeviceService;->registerCallback(Lcom/nuance/connect/language/KLDeviceCallback;)V

    .line 516
    iget-boolean v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z

    if-eqz v1, :cond_5

    .line 518
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v1, v3}, Lcom/nuance/connect/language/KLLanguageService;->specialVersioningSupport(Z)V

    .line 520
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;->registerLanguages(Lcom/nuance/connect/language/KLLanguageService;)V

    .line 521
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->langCB:Lcom/nuance/connect/language/KLLanguageCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/language/KLLanguageService;->registerCallback(Lcom/nuance/connect/language/KLLanguageCallback;)V

    move v1, v3

    .line 523
    goto/16 :goto_0
.end method

.method private stopKLManager()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 617
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLLanguageService;->serviceActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Language service still active - stop pending"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return v0

    .line 622
    :cond_0
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop KL Manager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    if-eqz v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLLanguageService;->unregisterCallbacks()V

    .line 625
    iput-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDevice:Lcom/nuance/connect/language/KLDeviceService;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLDeviceService;->unregisterCallbacks()V

    .line 628
    iput-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDevice:Lcom/nuance/connect/language/KLDeviceService;

    .line 629
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->getConfiguration()Lcom/nuance/connect/language/KLConfiguration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/language/KLConfiguration;->setRefreshInterval(I)V

    .line 630
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConnectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/language/KLManager;->unregisterConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V

    .line 631
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->stop()V

    .line 632
    iput-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mManager:Lcom/nuance/connect/language/KLManager;

    .line 633
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 768
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->cancelLang(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/language/KLLanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Lcom/nuance/connect/language/KLException;
    const-string v1, "SimeXt9DLManager"

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public download(ILcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V
    .locals 5
    .parameter "id"
    .parameter "downloadListener"

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 744
    const-string v2, "SimeXt9DLManager"

    const-string v3, "download() is called with id 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;

    .line 749
    .local v0, cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    const-string v2, "SimeXt9DLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / downloadListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / cb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-nez v0, :cond_1

    .line 751
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;

    .end local v0           #cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    invoke-direct {v0, p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;I)V

    .line 752
    .restart local v0       #cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->register(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V

    .line 758
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v2, p1, v0}, Lcom/nuance/connect/language/KLLanguageService;->downloadLanguage(ILcom/nuance/connect/language/KLLanguageDLCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->addWaitList(I)V

    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, ex:Lcom/nuance/connect/language/KLException;
    const-string v2, "SimeXt9DLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[languageListener.updated] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected extractFiles(Ljava/io/File;)Ljava/util/List;
    .locals 19
    .parameter "languagePackFileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    const-string v16, "SimeXt9DLManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "languagePackFileName"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 854
    .local v5, extractedFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x5000

    .line 856
    .local v2, BUF_SIZE:I
    const/4 v9, 0x0

    .line 858
    .local v9, langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 859
    .local v8, langPackInputStream:Ljava/io/InputStream;
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName1"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v16, Ljava/io/BufferedInputStream;

    const/16 v17, 0x5000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 861
    .end local v9           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .local v10, langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :try_start_1
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName2"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIme:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, dirPath:Ljava/lang/String;
    const-string v16, "SimeXt9DLManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "extractFiles dirPath"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 866
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 868
    :cond_0
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName3"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/16 v16, 0x5000

    move/from16 v0, v16

    new-array v7, v0, [B

    .line 872
    .local v7, fileDataBuffer:[B
    :goto_0
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    .local v13, langResourceZipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_3

    .line 873
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 874
    .local v11, langResourceFileName:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 876
    .local v15, unZipFileName:Ljava/lang/String;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 877
    .local v12, langResourceOutputStream:Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/BufferedOutputStream;

    const/16 v16, 0x5000

    move/from16 v0, v16

    invoke-direct {v14, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 878
    .local v14, out:Ljava/io/OutputStream;
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName4"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_1
    invoke-virtual {v10, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    .local v3, bytesRead:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    .line 880
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 887
    .end local v3           #bytesRead:I
    .end local v4           #dirPath:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fileDataBuffer:[B
    .end local v11           #langResourceFileName:Ljava/lang/String;
    .end local v12           #langResourceOutputStream:Ljava/io/FileOutputStream;
    .end local v13           #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .end local v14           #out:Ljava/io/OutputStream;
    .end local v15           #unZipFileName:Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v9, v10

    .end local v8           #langPackInputStream:Ljava/io/InputStream;
    .end local v10           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v9       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :goto_2
    const-string v17, "SimeXt9DLManager"

    const-string v18, "languagePackFileName6"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eqz v9, :cond_1

    .line 889
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    throw v16

    .line 882
    .end local v9           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v3       #bytesRead:I
    .restart local v4       #dirPath:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #fileDataBuffer:[B
    .restart local v8       #langPackInputStream:Ljava/io/InputStream;
    .restart local v10       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v11       #langResourceFileName:Ljava/lang/String;
    .restart local v12       #langResourceOutputStream:Ljava/io/FileOutputStream;
    .restart local v13       #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v15       #unZipFileName:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName5"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 884
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 887
    .end local v3           #bytesRead:I
    .end local v11           #langResourceFileName:Ljava/lang/String;
    .end local v12           #langResourceOutputStream:Ljava/io/FileOutputStream;
    .end local v14           #out:Ljava/io/OutputStream;
    .end local v15           #unZipFileName:Ljava/lang/String;
    :cond_3
    const-string v16, "SimeXt9DLManager"

    const-string v17, "languagePackFileName6"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eqz v10, :cond_4

    .line 889
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 893
    :cond_4
    return-object v5

    .line 887
    .end local v4           #dirPath:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fileDataBuffer:[B
    .end local v8           #langPackInputStream:Ljava/io/InputStream;
    .end local v10           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .end local v13           #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .restart local v9       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v16

    goto :goto_2
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getAvailableLangList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownloadLanguage()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getDownloadingLang()I

    move-result v0

    return v0
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getDownloadedLangList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getUpdatableLangList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWaitDownloadLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getWaitDownloadLangList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerDownloadListner(ILcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V
    .locals 4
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;

    .line 701
    .local v0, cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDownloadListner() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->register(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V

    .line 705
    :cond_0
    return-void
.end method

.method public serviceActive()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    .line 805
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLLanguageService;->serviceActive()Z

    move-result v0

    goto :goto_0
.end method

.method public setConnectionCB(Lcom/nuance/connect/language/KLConnectionCallback;)V
    .locals 3
    .parameter "connectionCallback"

    .prologue
    .line 688
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionCB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConnectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    .line 690
    return-void
.end method

.method public setDeviceCB(Lcom/nuance/connect/language/KLDeviceCallback;)V
    .locals 3
    .parameter "deviceCallback"

    .prologue
    .line 694
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceCB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDeviceCallback:Lcom/nuance/connect/language/KLDeviceCallback;

    .line 696
    return-void
.end method

.method public setKLConfigration(Lcom/nuance/connect/language/KLConfiguration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLConfiguration;->isTOSAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "SimeXt9DLManager"

    const-string v1, "Terms Of Service already accepted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    invoke-virtual {p1, v2}, Lcom/nuance/connect/language/KLConfiguration;->enableCellular(Z)V

    .line 132
    invoke-virtual {p1, v2}, Lcom/nuance/connect/language/KLConfiguration;->enableWiFi(Z)V

    .line 133
    invoke-virtual {p1, v2}, Lcom/nuance/connect/language/KLConfiguration;->enableRoaming(Z)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nuance/connect/language/KLConfiguration;->setRefreshInterval(I)V

    .line 135
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLConfiguration;->userHasAcceptedTOS()V

    goto :goto_0
.end method

.method public start(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;Z)Z
    .locals 9
    .parameter "config"
    .parameter "langListener"
    .parameter "isHotWords"

    .prologue
    const-wide/16 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 528
    const-string v2, "SimeXt9DLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, retVal:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 608
    :pswitch_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 613
    :goto_1
    return v1

    .line 533
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConnectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    if-nez v2, :cond_0

    .line 534
    const-string v2, "SimeXt9DLManager"

    const-string v3, "No KLConnectionCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDeviceCallback:Lcom/nuance/connect/language/KLDeviceCallback;

    if-nez v2, :cond_1

    .line 538
    const-string v2, "SimeXt9DLManager"

    const-string v3, "No KLDeviceCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 542
    :cond_1
    if-nez p1, :cond_2

    .line 543
    const-string v2, "SimeXt9DLManager"

    const-string v3, "No KLDLMConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 547
    :cond_2
    if-nez p2, :cond_3

    .line 548
    const-string v2, "SimeXt9DLManager"

    const-string v3, "No LanguageListListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 552
    :cond_3
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    .line 553
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    .line 554
    iput-boolean p3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z

    .line 556
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->startManager()Z

    move-result v1

    if-nez v1, :cond_4

    .line 557
    const/4 v0, 0x0

    .line 558
    goto :goto_0

    .line 561
    :cond_4
    if-eqz p3, :cond_5

    .line 562
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v1, v6}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 567
    :goto_2
    const/4 v0, 0x1

    .line 568
    goto :goto_0

    .line 564
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    goto :goto_2

    .line 572
    :pswitch_2
    if-eqz p3, :cond_6

    .line 573
    const/4 v0, 0x0

    goto :goto_0

    .line 575
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    .line 577
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    .line 578
    iput-boolean p3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z

    .line 580
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 581
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->isListUpdated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 582
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->LangListRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    :cond_7
    const/4 v0, 0x1

    .line 586
    goto/16 :goto_0

    .line 589
    :pswitch_3
    if-eqz p3, :cond_9

    .line 590
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManagerRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    .line 592
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    .line 593
    iput-boolean p3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z

    .line 595
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v1, v6}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 596
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->isListUpdated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 597
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->LangListRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 601
    :cond_9
    const/4 v0, 0x0

    .line 603
    goto/16 :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 656
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 659
    const-string v0, "SimeXt9DLManager"

    const-string v1, "stop() is called in state none"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return v3

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManager()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 671
    :cond_1
    :goto_1
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() done - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 666
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    goto :goto_1

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->get()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 668
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    goto :goto_1
.end method

.method public stop(Z)Z
    .locals 5
    .parameter "cancelCurrentDL"

    .prologue
    .line 638
    const-string v2, "SimeXt9DLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cancel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz p1, :cond_1

    .line 641
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getWaitDownloadLangList()Ljava/util/List;

    move-result-object v1

    .line 642
    .local v1, waitingList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 643
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->cancel(I)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->getDownloadingLang()I

    move-result v0

    .line 647
    .local v0, currentID:I
    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->cancel(I)V

    .line 652
    .end local v0           #currentID:I
    .end local v1           #waitingList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stop()Z

    move-result v2

    return v2
.end method

.method public stopDLManager()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 677
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopDLManager() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stopKLManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->set(I)V

    .line 681
    const/4 v0, 0x1

    .line 683
    :cond_0
    return v0
.end method

.method public unRegisterDownloadListner(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;

    .line 710
    .local v0, cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterDownloadListner() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->unregister()V

    .line 714
    :cond_0
    return-void
.end method

.method public uninstall(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 780
    const-string v1, "SimeXt9DLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstall() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    if-eqz p1, :cond_0

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/language/KLLanguageService;->languageUninstalled(I)V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Lcom/nuance/connect/language/KLException;
    const-string v1, "SimeXt9DLManager"

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
