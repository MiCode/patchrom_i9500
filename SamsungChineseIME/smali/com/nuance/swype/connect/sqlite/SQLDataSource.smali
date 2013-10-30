.class public abstract Lcom/nuance/swype/connect/sqlite/SQLDataSource;
.super Ljava/lang/Object;
.source "SQLDataSource.java"


# instance fields
.field protected database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected decryptDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4
    .parameter "field"
    .parameter "string"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 108
    :goto_0
    return-wide v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException while parsing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 108
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected decryptFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 4
    .parameter "field"
    .parameter "string"

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    :goto_0
    return v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException while parsing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 121
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected decryptInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "field"
    .parameter "string"

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 95
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException while parsing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 95
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "field"
    .parameter "string"

    .prologue
    .line 125
    const-string v1, ""

    .line 127
    .local v1, result:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 128
    const/4 v2, 0x0

    .line 137
    :goto_0
    return-object v2

    .line 132
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 137
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while securing data [d]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected encryptString(Ljava/lang/String;D)Ljava/lang/String;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 82
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 78
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "field"
    .parameter "string"

    .prologue
    .line 58
    const-string v1, ""

    .line 60
    .local v1, result:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 70
    :goto_0
    return-object v2

    .line 65
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 70
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while securing data [e]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, isOpen:Z
    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 54
    :cond_0
    return v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public openSafe()Z
    .locals 4

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 27
    .local v1, status:Z
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->open()V

    .line 31
    :cond_0
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;->open()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, ex:Landroid/database/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 41
    goto :goto_0

    .line 38
    .end local v0           #ex:Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method
