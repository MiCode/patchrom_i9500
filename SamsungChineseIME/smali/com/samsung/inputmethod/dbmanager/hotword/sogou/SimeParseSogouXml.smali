.class public Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;
.super Ljava/lang/Object;
.source "SimeParseSogouXml.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimeParseSogouData"


# instance fields
.field private currentTag:Ljava/lang/String;

.field private mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

.field private mSogouList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getParseList()Ljava/util/List;
    .locals 1
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
    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseXML(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 107
    .local v7, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 108
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 109
    .local v5, myReader:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)V

    .line 110
    .local v6, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, is:Ljava/io/InputStream;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;

    .line 115
    const-string v8, ""

    iput-object v8, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 118
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 119
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 126
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #myReader:Lorg/xml/sax/XMLReader;
    .end local v6           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v7           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;

    return-object v8

    .line 121
    .restart local v0       #concreteParser:Ljavax/xml/parsers/SAXParser;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #myReader:Lorg/xml/sax/XMLReader;
    .restart local v6       #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .restart local v7       #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e1:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 129
    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #myReader:Lorg/xml/sax/XMLReader;
    .end local v6           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v7           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v2

    .line 131
    .local v2, ex:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v2           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v2

    .line 135
    .local v2, ex:Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v2           #ex:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v2

    .line 139
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #concreteParser:Ljavax/xml/parsers/SAXParser;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #myReader:Lorg/xml/sax/XMLReader;
    .restart local v6       #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .restart local v7       #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2
.end method
