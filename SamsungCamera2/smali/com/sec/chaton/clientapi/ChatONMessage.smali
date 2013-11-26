.class Lcom/sec/chaton/clientapi/ChatONMessage;
.super Ljava/lang/Object;
.source "ChatONMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/chaton/clientapi/ChatONMessage$Builder;,
        Lcom/sec/chaton/clientapi/ChatONMessage$contentType;
    }
.end annotation


# static fields
.field protected static final CHATON_HOST:Ljava/lang/String; = "com.sec.chaton"

.field protected static final CHATON_PATH_CHAT:Ljava/lang/String; = "/chat?"

.field protected static final CHATON_SCHEME:Ljava/lang/String; = "chaton://"

.field static final ChatONMessageCharset:Ljava/nio/charset/Charset;

.field static final ChatONMessageEncoding:Ljava/lang/String;


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

.field protected intent:Landroid/content/Intent;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageCharset:Ljava/nio/charset/Charset;

    .line 31
    sget-object v0, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/chaton/clientapi/ChatONMessage$Builder;)V
    .locals 2
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appParamInfo:Ljava/util/List;

    .line 71
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->encoding:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->recipients:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    .line 169
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->context:Landroid/content/Context;

    .line 170
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->apiver:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->apiver:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->action:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->uri:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 175
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    .line 176
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appName:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appVersion:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->appParamInfo:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appParamInfo:Ljava/util/List;

    .line 179
    iget-object v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->encoding:Ljava/lang/String;

    .line 180
    iget-boolean v0, p1, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->requiredAccessToken:Z

    iput-boolean v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->requiredAccessToken:Z

    .line 182
    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text message is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    const-string v0, "open"

    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 187
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recipient list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    const-string v0, "open"

    iget-object v1, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    if-ne v0, v1, :cond_4

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid content type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->intent:Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Lcom/sec/chaton/clientapi/ChatONMessage;->makeChatONMessage()V

    .line 197
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method protected makeAppInfoData()Ljava/lang/String;
    .locals 10

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 262
    .local v0, appInfo:Lorg/json/JSONObject;
    :try_start_0
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 263
    if-nez v0, :cond_0

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .end local v0           #appInfo:Lorg/json/JSONObject;
    .local v1, appInfo:Lorg/json/JSONObject;
    move-object v0, v1

    .line 266
    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    :cond_0
    const-string v8, "name"

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v0

    .line 269
    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :try_start_1
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appVersion:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 270
    if-nez v1, :cond_8

    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v8, "version"

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 276
    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appParamInfo:Ljava/util/List;

    if-eqz v8, :cond_7

    .line 277
    if-nez v1, :cond_6

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    :goto_1
    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 282
    .local v2, arrObject:Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->appParamInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 283
    .local v7, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 284
    .local v6, object:Lorg/json/JSONObject;
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, key:Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 293
    .end local v2           #arrObject:Lorg/json/JSONArray;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 297
    :goto_4
    if-nez v0, :cond_5

    .line 298
    const/4 v8, 0x0

    .line 301
    :goto_5
    return-object v8

    .line 287
    .restart local v2       #arrObject:Lorg/json/JSONArray;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #object:Lorg/json/JSONObject;
    .restart local v7       #param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 289
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v8, "param"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 301
    .end local v2           #arrObject:Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 293
    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    goto :goto_4

    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :cond_6
    move-object v0, v1

    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    goto :goto_1

    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :cond_7
    move-object v0, v1

    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    goto :goto_4

    .end local v0           #appInfo:Lorg/json/JSONObject;
    .restart local v1       #appInfo:Lorg/json/JSONObject;
    :cond_8
    move-object v0, v1

    .end local v1           #appInfo:Lorg/json/JSONObject;
    .restart local v0       #appInfo:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method protected makeChatONMessage()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v7, uriString:Ljava/lang/StringBuilder;
    const-string v8, "chaton://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.sec.chaton"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/chat?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v8, "apiver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->apiver:Ljava/lang/String;

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v8, "&action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->action:Ljava/lang/String;

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v9, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    if-eq v8, v9, :cond_0

    .line 209
    const-string v8, "&type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->type:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v9}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->getValue()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    sget-object v9, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->unknown:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-eq v8, v9, :cond_1

    .line 213
    const-string v8, "&mime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->mimeType:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v9}, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->getValue()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 217
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->encoding:Ljava/lang/String;

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 219
    .local v1, charset:Ljava/nio/charset/Charset;
    sget-object v8, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 220
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageCharset:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    .line 223
    :cond_2
    const-string v8, "&msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->msg:Ljava/lang/String;

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v1           #charset:Ljava/nio/charset/Charset;
    :cond_3
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->uri:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 227
    const-string v8, "&uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->uri:Ljava/lang/String;

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/sec/chaton/clientapi/ChatONMessage;->makeAppInfoData()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, appInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 232
    const-string v8, "&appInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_5
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v5, recipientString:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->recipients:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v4, recipient:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    .end local v4           #recipient:Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    const-string v8, "&recipients="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/chaton/clientapi/ChatONMessage;->ChatONMessageEncoding:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #recipientString:Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 249
    .local v2, chatONMessageData:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    iget-boolean v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->requiredAccessToken:Z

    if-eqz v8, :cond_8

    .line 252
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/chaton/clientapi/ChatONAPI;->ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 253
    .local v6, returnUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/chaton/clientapi/ChatONMessage;->intent:Landroid/content/Intent;

    const-string v9, "password"

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .end local v6           #returnUri:Landroid/net/Uri;
    :cond_8
    return-void
.end method
