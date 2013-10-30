.class Lcom/touchtype/personalizer/ContactsParser$1;
.super Landroid/os/AsyncTask;
.source "ContactsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/ContactsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/ContactsParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/ContactsParser;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    .line 29
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    .local v1, contactsURI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    #getter for: Lcom/touchtype/personalizer/ContactsParser;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/touchtype/personalizer/ContactsParser;->access$000(Lcom/touchtype/personalizer/ContactsParser;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 33
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 35
    const/4 v8, 0x0

    .line 36
    .local v8, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 38
    .local v12, total:I
    if-nez v12, :cond_3

    .line 39
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No messages to parse!"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v1           #contactsURI:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v12           #total:I
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 58
    .restart local v1       #contactsURI:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #index:I
    .local v9, name:Ljava/lang/String;
    .restart local v12       #total:I
    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    #getter for: Lcom/touchtype/personalizer/ContactsParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/touchtype/personalizer/ContactsParser;->access$200(Lcom/touchtype/personalizer/ContactsParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v9, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V

    .line 66
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 67
    rem-int/lit8 v0, v8, 0xa

    if-nez v0, :cond_3

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 43
    .end local v9           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/touchtype/personalizer/ContactsParser$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    .restart local v9       #name:Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 48
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v10, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v10, stk:Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, token:Ljava/lang/String;
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    #getter for: Lcom/touchtype/personalizer/ContactsParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/touchtype/personalizer/ContactsParser;->access$200(Lcom/touchtype/personalizer/ContactsParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v11, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 90
    .end local v1           #contactsURI:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #stk:Ljava/util/StringTokenizer;
    .end local v11           #token:Ljava/lang/String;
    .end local v12           #total:I
    :catch_0
    move-exception v7

    .line 93
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error building Contacts query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 62
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #contactsURI:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #index:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v12       #total:I
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Null message found. Ignoring..."

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 96
    .end local v1           #contactsURI:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #total:I
    :catch_1
    move-exception v7

    .line 100
    .local v7, e:Ljava/lang/SecurityException;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contacts read permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 72
    .end local v7           #e:Ljava/lang/SecurityException;
    .restart local v1       #contactsURI:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #index:I
    .restart local v12       #total:I
    :cond_5
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/touchtype/personalizer/ContactsParser$1;->isCancelled()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :try_start_3
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    #getter for: Lcom/touchtype/personalizer/ContactsParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/touchtype/personalizer/ContactsParser;->access$200(Lcom/touchtype/personalizer/ContactsParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 79
    :catch_2
    move-exception v7

    .line 80
    .local v7, e:Ljava/io/IOException;
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/ContactsParser$1;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 87
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #index:I
    .end local v12           #total:I
    :cond_6
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Contacts Parsing cursor was null"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/ContactsParser;->onComplete()V

    .line 115
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/touchtype/personalizer/ContactsParser;->onProgress(II)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
