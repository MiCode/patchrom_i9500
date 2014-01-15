.class public Lcom/android/settings_ex/samba/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileOperation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final IpFileRead(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, IPList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 81
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 83
    .local v2, in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 86
    .local v6, str:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 88
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 90
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 95
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v7, "FileOperation"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    const/4 v0, 0x0

    .line 99
    .end local v0           #IPList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 107
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v0

    .line 99
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v0       #IPList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :cond_2
    if-eqz v5, :cond_3

    .line 101
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 107
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 109
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 115
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_3

    .line 102
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 103
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 110
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 111
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 102
    .end local v0           #IPList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 110
    :catch_4
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #IPList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 101
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 107
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 109
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 112
    :cond_6
    :goto_8
    throw v7

    .line 102
    :catch_5
    move-exception v1

    .line 103
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 110
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 111
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .line 94
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static Write_file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "filename"
    .parameter "str"

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 122
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, file:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 125
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 132
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 133
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .end local v4           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 134
    .restart local v4       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    const-string v5, "FileOperation"

    const-string v6, "Write_file : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 129
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    if-eqz v2, :cond_1

    .line 133
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FileOperation"

    const-string v6, "Write_file : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 132
    :goto_2
    if-eqz v2, :cond_2

    .line 133
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    :cond_2
    :goto_3
    throw v5

    .line 134
    :catch_3
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "FileOperation"

    const-string v7, "Write_file : fOut.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 128
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 26
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final fileRead(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "filename"

    .prologue
    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 44
    .local v1, in:Ljava/io/BufferedReader;
    const-string v5, ""

    .line 47
    .local v5, ip:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    .end local v3           #input:Ljava/io/FileInputStream;
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 51
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, str:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v5

    goto :goto_0

    .line 59
    :cond_0
    if-eqz v4, :cond_1

    .line 61
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 66
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 68
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    move-object v7, v5

    .line 74
    .end local v6           #str:Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v7

    .line 62
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v6       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v6           #str:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 55
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "FileOperation"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    const/4 v7, 0x0

    .line 59
    if-eqz v3, :cond_4

    .line 61
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 66
    :cond_4
    :goto_5
    if-eqz v1, :cond_3

    .line 68
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 69
    :catch_3
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 62
    :catch_4
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_5

    .line 61
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 66
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 68
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 71
    :cond_6
    :goto_8
    throw v7

    .line 62
    :catch_5
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 69
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .line 54
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #input:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v3       #input:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static final fileRemove(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 36
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
