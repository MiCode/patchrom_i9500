.class public Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;
.super Ljava/lang/Object;
.source "SimeSogouXmlParse.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "SimeSogouXmlParse"


# instance fields
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mSogouList:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method private generateList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 74
    .local v0, event:I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, nodeName:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 110
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mSogouList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 81
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mTimeStamp:Ljava/lang/String;

    goto :goto_1

    .line 85
    :pswitch_2
    const-string v2, "word"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    new-instance v2, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-direct {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 87
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    const-string v3, ""

    const-string v4, "pinyin"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->setSpell(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->setPhrase(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    const-string v2, "datetime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mTimeStamp:Ljava/lang/String;

    goto :goto_1

    .line 98
    :pswitch_3
    const-string v2, "word"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mSogouList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v0           #event:I
    .end local v1           #nodeName:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mSogouList:Ljava/util/List;

    return-object v2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseXML(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 29
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 33
    .local v5, phraseList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 34
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 36
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 37
    const/4 v3, 0x0

    .line 40
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 41
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_2
    const-string v7, "UTF-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    :try_start_3
    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouXmlParse;->generateList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    :goto_0
    move-object v3, v4

    .line 54
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    .line 64
    .end local v3           #is:Ljava/io/InputStream;
    :goto_2
    return-object v5

    .line 44
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 50
    .end local v4           #is:Ljava/io/InputStream;
    .local v1, e1:Ljava/io/FileNotFoundException;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 59
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 48
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    goto :goto_3
.end method
