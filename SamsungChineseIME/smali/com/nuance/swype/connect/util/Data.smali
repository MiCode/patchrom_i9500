.class public Lcom/nuance/swype/connect/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serializeObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "objectToSerialize"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v3, 0x0

    .line 38
    :goto_0
    return-object v3

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 29
    .local v3, serializedObj:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .local v1, objOut:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v1           #objOut:Ljava/io/ObjectOutputStream;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 36
    .local v0, io:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException writing object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unserializeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "serializedStr"

    .prologue
    .line 48
    const/4 v4, 0x0

    .line 50
    .local v4, unserializedObj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 52
    .local v2, in:Ljava/io/ObjectInputStream;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 53
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 54
    :cond_0
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    move-object v4, v5

    .line 76
    .end local v0           #data:[B
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .end local v4           #unserializedObj:Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v4

    .line 56
    .restart local v0       #data:[B
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 59
    if-eqz v3, :cond_2

    .line 60
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 64
    .end local v0           #data:[B
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .end local v4           #unserializedObj:Ljava/lang/Object;
    .local v1, e:Ljava/io/StreamCorruptedException;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unserializeObject() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_4

    .line 60
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_4
    throw v5
    :try_end_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 63
    :catch_1
    move-exception v1

    goto :goto_1

    .line 65
    :catch_2
    move-exception v1

    .line 66
    .end local v4           #unserializedObj:Ljava/lang/Object;
    .local v1, e:Ljava/io/OptionalDataException;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unserializeObject() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v1           #e:Ljava/io/OptionalDataException;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 68
    .end local v4           #unserializedObj:Ljava/lang/Object;
    .local v1, e:Ljava/io/IOException;
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unserializeObject() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :catch_4
    move-exception v1

    .line 70
    .end local v4           #unserializedObj:Ljava/lang/Object;
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unserializeObject() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :catch_5
    move-exception v1

    .line 74
    .end local v4           #unserializedObj:Ljava/lang/Object;
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unserializeObject() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #data:[B
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    .restart local v4       #unserializedObj:Ljava/lang/Object;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 69
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 67
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 65
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 59
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method
