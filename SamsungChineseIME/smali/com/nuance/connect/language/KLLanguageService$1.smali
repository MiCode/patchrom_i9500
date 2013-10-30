.class Lcom/nuance/connect/language/KLLanguageService$1;
.super Ljava/lang/Object;
.source "KLLanguageService.java"

# interfaces
.implements Lcom/nuance/swype/connect/api/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLLanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final MESSAGE_IDS:[I

.field final synthetic this$0:Lcom/nuance/connect/language/KLLanguageService;


# direct methods
.method constructor <init>(Lcom/nuance/connect/language/KLLanguageService;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService$1;->MESSAGE_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "LanguageDLHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService$1;->MESSAGE_IDS:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 17
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$000(Lcom/nuance/connect/language/KLLanguageService;)Ljava/lang/ref/WeakReference;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/language/KLManager;

    .line 91
    .local v7, manager:Lcom/nuance/connect/language/KLManager;
    if-nez v7, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    const/4 v5, 0x0

    .line 107
    .local v5, lang:Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 111
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 112
    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    const-string v14, "filePath"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #calls: Lcom/nuance/connect/language/KLLanguageService;->markLanguageInstalled(Ljava/lang/String;)V
    invoke-static {v14, v5}, Lcom/nuance/connect/language/KLLanguageService;->access$200(Lcom/nuance/connect/language/KLLanguageService;Ljava/lang/String;)V

    .line 120
    sget v11, Lcom/nuance/swype/connect/api/Integers;->STATUS_SUCCESS:I

    .line 121
    .local v11, status:I
    const/16 v14, 0xd8

    const/high16 v15, -0x8000

    invoke-virtual {v7, v14, v5, v11, v15}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/language/KLLanguageDLCallback;

    .line 128
    .local v2, callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$400(Lcom/nuance/connect/language/KLLanguageService;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$500(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    const-string v15, "PROP_VERSION"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 132
    .local v12, version:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v14, v12}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadComplete(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    .end local v11           #status:I
    .end local v12           #version:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 138
    .local v4, ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception Installing: lang="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 139
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 140
    const/16 v14, 0xd8

    sget v15, Lcom/nuance/swype/connect/api/Integers;->STATUS_EXCEPTION:I

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v7, v14, v5, v15, v0}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_0

    .line 96
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #lang:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .local v3, data:Ljava/io/Serializable;
    move-object v8, v3

    .line 100
    check-cast v8, Ljava/util/HashMap;

    .line 101
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #calls: Lcom/nuance/connect/language/KLLanguageService;->updateLanguagesData(Ljava/util/Map;)V
    invoke-static {v14, v8}, Lcom/nuance/connect/language/KLLanguageService;->access$100(Lcom/nuance/connect/language/KLLanguageService;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 134
    .end local v3           #data:Ljava/io/Serializable;
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2       #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    .restart local v5       #lang:Ljava/lang/String;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #status:I
    :cond_3
    :try_start_1
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v14}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadComplete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 148
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    .end local v5           #lang:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #status:I
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 149
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .restart local v3       #data:Ljava/io/Serializable;
    move-object v8, v3

    .line 151
    check-cast v8, Ljava/util/HashMap;

    .line 152
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #calls: Lcom/nuance/connect/language/KLLanguageService;->updateLanguagesData(Ljava/util/Map;)V
    invoke-static {v14, v8}, Lcom/nuance/connect/language/KLLanguageService;->access$100(Lcom/nuance/connect/language/KLLanguageService;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 157
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #data:Ljava/io/Serializable;
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 158
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .restart local v5       #lang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #calls: Lcom/nuance/connect/language/KLLanguageService;->removeLanguage(Ljava/lang/String;)V
    invoke-static {v14, v5}, Lcom/nuance/connect/language/KLLanguageService;->access$600(Lcom/nuance/connect/language/KLLanguageService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v1           #b:Landroid/os/Bundle;
    .end local v5           #lang:Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 165
    .restart local v1       #b:Landroid/os/Bundle;
    const-string v14, "PROP_LANGUAGE"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 167
    const-string v14, "DEFAULT_KEY"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 168
    .local v10, reasonCode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/language/KLLanguageDLCallback;

    .line 169
    .restart local v2       #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-interface {v2, v10}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadFailed(I)V

    goto/16 :goto_0

    .line 176
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    .end local v6           #language:Ljava/lang/String;
    .end local v10           #reasonCode:I
    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .restart local v6       #language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$700(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/language/KLLanguageDLCallback;

    .line 183
    .restart local v2       #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v14, 0x3

    invoke-interface {v2, v14}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadStopped(I)V

    .line 187
    .end local v2           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "redownload was requested for canceled language, redownloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 190
    invoke-static {v6}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v13

    .line 193
    .local v13, xt9LanguageId:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/connect/language/KLLanguageDLCallback;

    invoke-virtual {v15, v13, v14}, Lcom/nuance/connect/language/KLLanguageService;->downloadLanguage(ILcom/nuance/connect/language/KLLanguageDLCallback;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/nuance/connect/language/KLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 195
    :catch_1
    move-exception v4

    .line 196
    .local v4, ex:Lcom/nuance/connect/language/KLException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error Attempting to Redownload with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v4           #ex:Lcom/nuance/connect/language/KLException;
    .end local v6           #language:Ljava/lang/String;
    .end local v13           #xt9LanguageId:I
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "DEFAULT_KEY"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6       #language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$700(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MESSAGE_HOST_LANGUAGE_DOWNLOAD_NETWORK_TIMEOUT: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/language/KLLanguageDLCallback;

    .line 210
    .restart local v2       #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/4 v14, 0x4

    invoke-interface {v2, v14}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadStopped(I)V

    .line 214
    .end local v2           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 215
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "redownload was requested for network timeout language, redownloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 217
    invoke-static {v6}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v13

    .line 220
    .restart local v13       #xt9LanguageId:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/connect/language/KLLanguageDLCallback;

    invoke-virtual {v15, v13, v14}, Lcom/nuance/connect/language/KLLanguageService;->downloadLanguage(ILcom/nuance/connect/language/KLLanguageDLCallback;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/language/KLLanguageService$1;->this$0:Lcom/nuance/connect/language/KLLanguageService;

    #getter for: Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;
    invoke-static {v14}, Lcom/nuance/connect/language/KLLanguageService;->access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/nuance/connect/language/KLException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v4

    .line 223
    .restart local v4       #ex:Lcom/nuance/connect/language/KLException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error Attempting to Redownload with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x5b -> :sswitch_3
        0x5c -> :sswitch_2
        0x65 -> :sswitch_1
        0x9b -> :sswitch_4
        0xa0 -> :sswitch_5
        0xa2 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
