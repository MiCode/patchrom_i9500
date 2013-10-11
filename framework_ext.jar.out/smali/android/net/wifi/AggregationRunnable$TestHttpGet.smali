.class public Landroid/net/wifi/AggregationRunnable$TestHttpGet;
.super Ljava/lang/Object;
.source "AggregationRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AggregationRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHttpGet"
.end annotation


# instance fields
.field final cr:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/net/wifi/AggregationRunnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AggregationRunnable;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method private isValidLoginUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "refreshUrl"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    const-string v0, "vzwwifi.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postoperation(Ljava/net/URI;)V
    .locals 22
    .parameter "loginURL"

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->isValidLoginUrl(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 188
    :try_start_0
    new-instance v16, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v16, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " Login URL postoperation "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljavax/net/ssl/HttpsURLConnection;

    .line 193
    .local v17, urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    const-string v19, "POST"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 194
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 195
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 196
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 197
    const-string v19, "Content-Type"

    const-string v20, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v6, content:Ljava/lang/StringBuilder;
    new-instance v3, Landroid/net/wifi/VzwAuth;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/net/wifi/VzwAuth;-><init>(Landroid/content/Context;)V

    .line 202
    .local v3, auth:Landroid/net/wifi/VzwAuth;
    invoke-virtual {v3}, Landroid/net/wifi/VzwAuth;->getVZWUserName()Ljava/lang/String;

    move-result-object v18

    .line 203
    .local v18, usrName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/VzwAuth;->getVZWPassword()Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, pass:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/VzwAuth;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, deviceType:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/VzwAuth;->getModelName()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, model:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/VzwAuth;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, callingId:Ljava/lang/String;
    const-string v19, "UserName="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v19, "&Password="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v19, "&device-type="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v19, "&device-model-number="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v19, "&calling-station-id="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "content "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 215
    .local v13, outputStream:Ljava/io/OutputStream;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 216
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 217
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 218
    .local v15, responseCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Response Code of HTTPS POST: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 221
    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 222
    .local v10, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v19

    new-instance v20, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v19 .. v20}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v12

    .line 224
    .local v12, msg:Landroid/net/wifi/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " msg has Wispr comment"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-boolean v0, v12, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, v12, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {v12}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "comment "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v19, 0x3c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v19

    new-instance v20, Lorg/xml/sax/InputSource;

    new-instance v21, Ljava/io/StringReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface/range {v19 .. v20}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v12

    .line 233
    .end local v5           #comment:Ljava/lang/String;
    :cond_0
    iget v0, v12, Landroid/net/wifi/Message;->messageType:I

    move/from16 v19, v0

    const/16 v20, 0x78

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 234
    iget v0, v12, Landroid/net/wifi/Message;->responseCode:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Unknown error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v12           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 264
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    .end local v3           #auth:Landroid/net/wifi/VzwAuth;
    .end local v4           #callingId:Ljava/lang/String;
    .end local v6           #content:Ljava/lang/StringBuilder;
    .end local v8           #deviceType:Ljava/lang/String;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #model:Ljava/lang/String;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #responseCode:I
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v18           #usrName:Ljava/lang/String;
    :goto_1
    return-void

    .line 236
    .restart local v3       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v4       #callingId:Ljava/lang/String;
    .restart local v6       #content:Ljava/lang/StringBuilder;
    .restart local v8       #deviceType:Ljava/lang/String;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v11       #model:Ljava/lang/String;
    .restart local v12       #msg:Landroid/net/wifi/Message;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    .restart local v14       #pass:Ljava/lang/String;
    .restart local v15       #responseCode:I
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v18       #usrName:Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 237
    .local v7, cr:Landroid/content/ContentResolver;
    invoke-virtual {v12}, Landroid/net/wifi/Message;->getLogoffURL()Ljava/net/URI;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 239
    const-string v19, "no_logoff_url"

    invoke-virtual {v12}, Landroid/net/wifi/Message;->getLogoffURL()Ljava/net/URI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Logoff URL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Landroid/net/wifi/Message;->getLogoffURL()Ljava/net/URI;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_AGGREGATION_DELAY"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v3           #auth:Landroid/net/wifi/VzwAuth;
    .end local v4           #callingId:Ljava/lang/String;
    .end local v6           #content:Ljava/lang/StringBuilder;
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v8           #deviceType:Ljava/lang/String;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #model:Ljava/lang/String;
    .end local v12           #msg:Landroid/net/wifi/Message;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #responseCode:I
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v18           #usrName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 266
    .local v9, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 242
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v3       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v4       #callingId:Ljava/lang/String;
    .restart local v6       #content:Ljava/lang/StringBuilder;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    .restart local v8       #deviceType:Ljava/lang/String;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v11       #model:Ljava/lang/String;
    .restart local v12       #msg:Landroid/net/wifi/Message;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    .restart local v14       #pass:Ljava/lang/String;
    .restart local v15       #responseCode:I
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v18       #usrName:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v19, "no_logoff_url"

    const-string v20, "no_logoff_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 247
    .end local v7           #cr:Landroid/content/ContentResolver;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Login failed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 251
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Access gateway internal error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 260
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #msg:Landroid/net/wifi/Message;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Error ****************"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 270
    .end local v3           #auth:Landroid/net/wifi/VzwAuth;
    .end local v4           #callingId:Ljava/lang/String;
    .end local v6           #content:Ljava/lang/StringBuilder;
    .end local v8           #deviceType:Ljava/lang/String;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #model:Ljava/lang/String;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v14           #pass:Ljava/lang/String;
    .end local v15           #responseCode:I
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v18           #usrName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "Redirect Message doesnot have a valid login URL"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public executeHttpGet()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v8, "http://www.verizon.com/"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 106
    .local v7, urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 108
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code of HTTP GET "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x12e

    if-ne v8, v9, :cond_0

    .line 110
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 111
    .local v2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, refreshUrl:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v6, Ljava/net/URL;

    .end local v6           #url:Ljava/net/URL;
    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 116
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 119
    .end local v2           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5           #refreshUrl:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "XML parsing for login URL"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 121
    .local v3, is:Ljava/io/InputStream;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 122
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 123
    .local v4, msg:Landroid/net/wifi/Message;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " msg has Wispr comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v8, v4, Landroid/net/wifi/Message;->hasWispr:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 125
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, comment:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v8, 0x3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 129
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 132
    .end local v0           #comment:Ljava/lang/String;
    :cond_1
    iget v8, v4, Landroid/net/wifi/Message;->messageType:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 133
    iget v8, v4, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v8, :sswitch_data_0

    .line 147
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 154
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 162
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 135
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "login URL ---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->postoperation(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 155
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Network adminstration error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 158
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 159
    .local v1, e:Lorg/xml/sax/SAXException;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v1           #e:Lorg/xml/sax/SAXException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_2
    :try_start_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Access gateway internal error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    :cond_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DELAY"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method
