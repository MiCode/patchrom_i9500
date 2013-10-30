.class Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SimeParseSogouXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getPhraseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 83
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$300(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "word"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->setPhrase(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$300(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 95
    const-string v0, "word"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mSogouList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    const-string v1, ""

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mTimeStamp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 69
    const-string v0, "word"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    invoke-direct {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;-><init>()V

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$202(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->mCurrentPhrase:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;)Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    move-result-object v0

    const-string v1, "pinyin"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;->setSpell(Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml$getPhraseHandler;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->currentTag:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;->access$302(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeParseSogouXml;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-void
.end method
