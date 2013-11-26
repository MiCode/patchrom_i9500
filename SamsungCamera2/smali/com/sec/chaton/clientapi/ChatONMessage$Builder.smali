.class public Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
.super Ljava/lang/Object;
.source "ChatONMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/chaton/clientapi/ChatONMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected action:Ljava/lang/String;

.field protected apiver:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected appParamInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected appVersion:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected encoding:Ljava/lang/String;

.field protected mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

.field protected msg:Ljava/lang/String;

.field protected recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected requiredAccessToken:Z

.field protected type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field protected uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->apiver:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 82
    sget-object v0, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appParamInfo:Ljava/util/List;

    .line 86
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->encoding:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->requiredAccessToken:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/chaton/clientapi/ChatONMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage;

    invoke-direct {v0, p0}, Lcom/sec/chaton/clientapi/ChatONMessage;-><init>(Lcom/sec/chaton/clientapi/ChatONMessage$Builder;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "action"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->action:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setApiVer(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "apiver"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->apiver:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "appName"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appName:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setAppParamInfo(Ljava/util/List;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sec/chaton/clientapi/ChatONMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, appParamInfo:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appParamInfo:Ljava/util/List;

    .line 149
    return-object p0
.end method

.method public setAppVer(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appVersion:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 129
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "context"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->context:Landroid/content/Context;

    .line 91
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "encoding"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->encoding:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    .line 134
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "msg"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->msg:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 3
    .parameter "recipients"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    .line 101
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 104
    .restart local v0       #i:I
    :cond_2
    return-object p0
.end method

.method public setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "requiredAccessToken"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->requiredAccessToken:Z

    .line 159
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->uri:Ljava/lang/String;

    .line 124
    return-object p0
.end method
