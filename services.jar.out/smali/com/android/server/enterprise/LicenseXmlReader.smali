.class public Lcom/android/server/enterprise/LicenseXmlReader;
.super Ljava/lang/Object;
.source "LicenseXmlReader.java"


# static fields
.field private static final LICENSE_EXPIRY_TIME_NODE:Ljava/lang/String; = "expiry-time"

.field private static final LICENSE_EXPIRY_TIME_NODE_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final LICENSE_ROOT_NODE:Ljava/lang/String; = "license-info"


# instance fields
.field private mExpiryTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiryTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/server/enterprise/LicenseXmlReader;->mExpiryTime:J

    return-wide v0
.end method

.method public readXmlData(Ljava/io/InputStream;)V
    .locals 10
    .parameter "is"

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 25
    .local v3, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 28
    .local v1, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 31
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 34
    .local v2, docEle:Lorg/w3c/dom/Element;
    const-string v8, "expiry-time"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 35
    .local v6, nl:Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_0

    .line 36
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 38
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 39
    .local v7, node:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "timestamp"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/enterprise/LicenseXmlReader;->mExpiryTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #docEle:Lorg/w3c/dom/Element;
    .end local v3           #docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #i:I
    .end local v6           #nl:Lorg/w3c/dom/NodeList;
    .end local v7           #node:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v4

    .line 46
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method
