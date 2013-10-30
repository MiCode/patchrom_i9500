.class public Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;
.super Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;
.source "SimeSogouHotwordMgr.java"


# static fields
.field public static final HOTWORD_IN_ENGIN_FILE_NAME:Ljava/lang/String; = "/hotlist.mdb"

.field public static final HOTWORD_IN_MDB_FILE_NAME:Ljava/lang/String; = "/hotlist.xml"

.field public static final HOTWORD_XML_FILE_NAME:Ljava/lang/String; = "/hotdict.xml"

.field public static final SIME_SOGOU_HOTWORD_DIR:Ljava/lang/String; = "/sogou"

.field public static final SOGOU_HOTWORD_VERSION_CHECK:Ljava/lang/String; = "&ask=1"

.field public static final SOGOU_HOTWORD_XML_URI:Ljava/lang/String; = "http://input.shouji.sogou.com/jsp/openapi/reciapi.jsp?d="

.field private static final TAG:Ljava/lang/String; = "SimeSogouHotwordMgr"

.field public static final TEMP_HOTWORD_XML_FILE_NAME:Ljava/lang/String; = "/temp_hotdict.xml"

.field private static mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;


# instance fields
.field private mDownloader:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

.field private mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

.field private mHotwordInEnginFileName:Ljava/lang/String;

.field private mHotwordInMdbFileName:Ljava/lang/String;

.field private mHotwordXMLFileName:Ljava/lang/String;

.field private mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

.field private mTempHotwordXMLFileName:Ljava/lang/String;

.field private mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

.field private mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    .line 87
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 88
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 89
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    .line 90
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mDownloader:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    .line 107
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, sogouDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mContext:Landroid/content/Context;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotdict.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotlist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/temp_hotdict.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotlist.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    .line 123
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    invoke-direct {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    .line 124
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 125
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mDownloader:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    .line 126
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getDownloadHotWords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->removeTempFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->replaceXmlFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->convertXmlToEngin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;ILjava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addUpdatedWords()V
    .locals 6

    .prologue
    .line 198
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 199
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 201
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getList()Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, xmlWordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->addwordListToEngin(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, addedwordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->insertList(Ljava/util/List;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 210
    .local v1, starttime:J
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->writeHotwordListToXML(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;)V

    .line 217
    .end local v1           #starttime:J
    :cond_0
    return-void
.end method

.method private addwordListToEngin(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, xmlWordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 145
    .local v1, addedwordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    if-eqz p1, :cond_2

    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, totalLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 150
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 152
    .local v3, item:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getListSize()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_0

    .line 154
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getLastItem()Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    move-result-object v4

    .line 155
    .local v4, oldPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    if-eqz v4, :cond_2

    .line 157
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->deleteHotwordFromEngin(Ljava/lang/String;)I

    .line 159
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->deleteLastItem()V

    .line 166
    .end local v4           #oldPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    :cond_0
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getListSize()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 169
    .local v0, accumalatedSize:I
    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getSpell()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 185
    .local v5, ret:I
    if-nez v5, :cond_1

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0           #accumalatedSize:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    .end local v5           #ret:I
    .end local v6           #totalLen:I
    :cond_2
    return-object v1
.end method

.method private convertXmlToEngin(Ljava/lang/String;)V
    .locals 2
    .parameter "langStr"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->init()I

    .line 496
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->setLanguage(Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->resetHotwordsInEngin()I

    .line 501
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->addUpdatedWords()V

    .line 505
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->exportHotwords(Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->exit()V

    .line 507
    return-void
.end method

.method private createListFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 335
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 340
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-object v1

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    :cond_0
    return-void
.end method

.method private getDownloadHotWords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, listPhrases:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    return-object v0
.end method

.method private getHotwordList(Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 411
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-direct {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;-><init>()V

    .line 413
    .local v0, hotWordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 416
    .local v1, sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    invoke-interface {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->setList(Ljava/util/List;Ljava/lang/String;)V

    .line 419
    .end local v1           #sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    invoke-direct {v0, p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    .line 100
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    return-object v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHotWordListFileExist()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHotWordXmlFileExist()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSameVsersion()Z
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, bRet:Z
    const-string v1, ""

    .line 321
    .local v1, listTimeStamp:Ljava/lang/String;
    const-string v2, ""

    .line 323
    .local v2, xmlTimeStamp:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeTempFile()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private replaceXmlFile()V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, fileDst:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, fileSrc:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 314
    return-void
.end method

.method private writeHotwordListToXML(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;)V
    .locals 19
    .parameter "hotWordList"

    .prologue
    .line 350
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 351
    .local v4, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 354
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 357
    .local v5, doc:Lorg/w3c/dom/Document;
    const-string v18, "root"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 358
    .local v12, root:Lorg/w3c/dom/Element;
    invoke-interface {v5, v12}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 360
    const-string v18, "datetime"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 362
    .local v2, dateTime:Lorg/w3c/dom/Element;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 363
    invoke-interface {v12, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getList()Ljava/util/List;

    move-result-object v13

    .line 367
    .local v13, sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    const-string v18, "wordCount"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 369
    .local v8, number:Lorg/w3c/dom/Element;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 370
    invoke-interface {v12, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 372
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 374
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, phrase:Ljava/lang/String;
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->getSpell()Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, pinyin:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 378
    const-string v18, "word"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 380
    .local v17, word:Lorg/w3c/dom/Element;
    const-string v18, "pinyin"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    .end local v17           #word:Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 388
    .end local v9           #phrase:Ljava/lang/String;
    .end local v10           #pinyin:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v15

    .line 389
    .local v15, tFactory:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v15}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v16

    .line 390
    .local v16, transformer:Ljavax/xml/transform/Transformer;
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 391
    .local v14, source:Ljavax/xml/transform/dom/DOMSource;
    new-instance v11, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->createListFile()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 392
    .local v11, result:Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v11}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    .end local v2           #dateTime:Lorg/w3c/dom/Element;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #i:I
    .end local v8           #number:Lorg/w3c/dom/Element;
    .end local v11           #result:Ljavax/xml/transform/stream/StreamResult;
    .end local v12           #root:Lorg/w3c/dom/Element;
    .end local v13           #sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    .end local v14           #source:Ljavax/xml/transform/dom/DOMSource;
    .end local v15           #tFactory:Ljavax/xml/transform/TransformerFactory;
    .end local v16           #transformer:Ljavax/xml/transform/Transformer;
    :goto_1
    return-void

    .line 394
    .restart local v2       #dateTime:Lorg/w3c/dom/Element;
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v8       #number:Lorg/w3c/dom/Element;
    .restart local v12       #root:Lorg/w3c/dom/Element;
    .restart local v13       #sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :catch_0
    move-exception v6

    .line 395
    .local v6, e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :try_start_2
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 402
    .end local v2           #dateTime:Lorg/w3c/dom/Element;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    .end local v7           #i:I
    .end local v8           #number:Lorg/w3c/dom/Element;
    .end local v12           #root:Lorg/w3c/dom/Element;
    .end local v13           #sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :catch_1
    move-exception v6

    .line 404
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 396
    .end local v6           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2       #dateTime:Lorg/w3c/dom/Element;
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v8       #number:Lorg/w3c/dom/Element;
    .restart local v12       #root:Lorg/w3c/dom/Element;
    .restart local v13       #sogouList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :catch_2
    move-exception v6

    .line 397
    .local v6, e:Ljavax/xml/transform/TransformerConfigurationException;
    :try_start_3
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 398
    .end local v6           #e:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3
    move-exception v6

    .line 399
    .local v6, e:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public cancelUpdate(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isUpdating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->cancelUpdate(I)V

    .line 482
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mDownloader:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->stopDownload()V

    .line 484
    :cond_0
    return-void
.end method

.method public checkandAddHotWords()Z
    .locals 7

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isHotWordXmlFileExist()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 225
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    .line 227
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isSameVsersion()Z

    move-result v5

    if-nez v5, :cond_2

    .line 229
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->init()I

    .line 232
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    const-string v6, "zh_CN"

    invoke-interface {v5, v6}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->setLanguage(Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->resetHotwordsInEngin()I

    .line 237
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getList()Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, xmlWordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->addwordListToEngin(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, addedwordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXmlHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->insertList(Ljava/util/List;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 249
    .local v2, starttime:J
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->exportHotwords(Ljava/lang/String;)I

    .line 250
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mMdbHotwordList:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->writeHotwordListToXML(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;)V

    .line 258
    .end local v2           #starttime:J
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->exit()V

    .line 259
    const/4 v1, 0x1

    .line 269
    .end local v0           #addedwordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    .end local v4           #xmlWordList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :cond_2
    :goto_0
    return v1

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isHotWordListFileExist()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHotwordEnginFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "dbId"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    .line 137
    :cond_0
    return-object v0
.end method

.method public setUpdateBackground(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->setUpdateCallBack(ILcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 490
    return-void
.end method

.method public update(I)V
    .locals 4
    .parameter "dbId"

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->update(I)V

    .line 430
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    .line 436
    :cond_0
    const-string v0, ""

    .line 438
    .local v0, timeStamp:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    .line 441
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mXMLParser:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;

    invoke-interface {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://input.shouji.sogou.com/jsp/openapi/reciapi.jsp?d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->mDownloader:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    new-instance v3, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->download(Ljava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 475
    return-void
.end method
