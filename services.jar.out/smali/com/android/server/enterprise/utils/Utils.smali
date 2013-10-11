.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .locals 5
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 341
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 343
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 344
    .local v2, object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v2           #object:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 346
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 347
    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v2, v3

    .line 349
    goto :goto_0
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, b:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_2

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, count:I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 214
    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, effective:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, wildCardEntry:Ljava/lang/Object;,"TT;"
    .local p2, input:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 304
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 310
    :goto_0
    return v0

    .line 306
    :cond_0
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, admin1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    .end local p1           #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_0
    return-object p1

    .line 248
    .restart local p1       #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_0
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, p0

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v0, effectiveListMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 258
    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 260
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .line 266
    .local v3, wildcardSetCount:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 269
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 270
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 294
    :goto_1
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 297
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 299
    goto/16 :goto_0

    .line 271
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 276
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    move-object v1, v0

    .line 278
    .local v1, nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .line 283
    .local v2, wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_2
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 284
    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 280
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_3
    move-object v1, p1

    .line 281
    .restart local v1       #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2       #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_2

    .line 287
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_4
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 290
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "aPropName"
    .parameter "aFileName"

    .prologue
    const/4 v7, 0x0

    .line 79
    const-string v0, "readPropertyValue"

    .line 82
    .local v0, TAG:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v3, lFReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 91
    .local v2, lBufReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 92
    .local v4, lLine:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 93
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, lParsedString:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    aget-object v6, v5, v8

    .line 97
    .local v6, result:Ljava/lang/String;
    :goto_0
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    const/4 v6, 0x0

    .line 107
    :cond_1
    if-eqz v3, :cond_2

    .line 108
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 109
    const/4 v3, 0x0

    .line 111
    :cond_2
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 113
    const/4 v2, 0x0

    .line 119
    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v3           #lFReader:Ljava/io/FileReader;
    .end local v4           #lLine:Ljava/lang/String;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File access error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 86
    goto :goto_1

    .line 96
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lFReader:Ljava/io/FileReader;
    .restart local v4       #lLine:Ljava/lang/String;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 102
    .end local v5           #lParsedString:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v3, :cond_5

    .line 108
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 109
    const/4 v3, 0x0

    .line 111
    :cond_5
    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 113
    const/4 v2, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object v6, v7

    .line 104
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v7

    .line 107
    if-eqz v3, :cond_7

    .line 108
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 109
    const/4 v3, 0x0

    .line 111
    :cond_7
    if-eqz v2, :cond_8

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 113
    const/4 v2, 0x0

    .line 106
    :cond_8
    :goto_3
    throw v7

    .line 107
    :cond_9
    if-eqz v3, :cond_a

    .line 108
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 109
    const/4 v3, 0x0

    .line 111
    :cond_a
    if-eqz v2, :cond_b

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 113
    const/4 v2, 0x0

    :cond_b
    :goto_4
    move-object v6, v7

    .line 119
    goto :goto_1

    .line 115
    :catch_2
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 115
    .local v1, e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .locals 4
    .parameter "o"

    .prologue
    .line 318
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 322
    .local v3, out:Ljava/io/ObjectOutput;
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 323
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 326
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    .end local v3           #out:Ljava/io/ObjectOutput;
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "aPropName"
    .parameter "aPropValue"
    .parameter "aFileName"

    .prologue
    .line 137
    const/4 v10, 0x0

    .line 138
    .local v10, lSuccess:Z
    const/4 v11, 0x0

    .line 139
    .local v11, ps:Ljava/io/PrintStream;
    const/4 v4, 0x0

    .line 140
    .local v4, lFReader:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 142
    .local v2, lBufReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, lFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1a4

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 154
    :cond_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 155
    .end local v4           #lFReader:Ljava/io/FileReader;
    .local v5, lFReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v13, 0x200

    invoke-direct {v3, v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 157
    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .local v3, lBufReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v13, ""

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v9, lStrBuffer:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 159
    .local v7, lFound:Z
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, lLine:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 160
    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 162
    const/4 v7, 0x1

    .line 163
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 181
    .end local v7           #lFound:Z
    .end local v8           #lLine:Ljava/lang/String;
    .end local v9           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 182
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v6           #lFile:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    if-eqz v4, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 187
    const/4 v4, 0x0

    .line 190
    :cond_2
    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 192
    const/4 v2, 0x0

    .line 197
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 198
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 199
    .end local v11           #ps:Ljava/io/PrintStream;
    :goto_3
    const/4 v11, 0x0

    .line 202
    .restart local v11       #ps:Ljava/io/PrintStream;
    :cond_4
    :goto_4
    return v10

    .line 170
    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v4           #lFReader:Ljava/io/FileReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFile:Ljava/io/File;
    .restart local v7       #lFound:Z
    .restart local v8       #lLine:Ljava/lang/String;
    .restart local v9       #lStrBuffer:Ljava/lang/StringBuffer;
    :cond_5
    if-nez v7, :cond_6

    .line 171
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 177
    const/4 v2, 0x0

    .line 178
    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v12, Ljava/io/PrintStream;

    invoke-direct {v12, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 179
    .end local v11           #ps:Ljava/io/PrintStream;
    .local v12, ps:Ljava/io/PrintStream;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 180
    const/4 v10, 0x1

    .line 185
    if-eqz v5, :cond_c

    .line 186
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 187
    const/4 v4, 0x0

    .line 190
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    :goto_5
    if-eqz v2, :cond_7

    .line 191
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 192
    const/4 v2, 0x0

    .line 197
    :cond_7
    :goto_6
    if-eqz v12, :cond_b

    .line 198
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .line 184
    .end local v6           #lFile:Ljava/io/File;
    .end local v7           #lFound:Z
    .end local v8           #lLine:Ljava/lang/String;
    .end local v9           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v11       #ps:Ljava/io/PrintStream;
    :catchall_0
    move-exception v13

    .line 185
    :goto_7
    if-eqz v4, :cond_8

    .line 186
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 187
    const/4 v4, 0x0

    .line 190
    :cond_8
    if-eqz v2, :cond_9

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 192
    const/4 v2, 0x0

    .line 197
    :cond_9
    :goto_8
    if-eqz v11, :cond_a

    .line 198
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 199
    const/4 v11, 0x0

    .line 184
    :cond_a
    throw v13

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 194
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 194
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #lFReader:Ljava/io/FileReader;
    .end local v11           #ps:Ljava/io/PrintStream;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFile:Ljava/io/File;
    .restart local v7       #lFound:Z
    .restart local v8       #lLine:Ljava/lang/String;
    .restart local v9       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .line 195
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 194
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    goto :goto_9

    .line 184
    .end local v4           #lFReader:Ljava/io/FileReader;
    .end local v7           #lFound:Z
    .end local v8           #lLine:Ljava/lang/String;
    .end local v9           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v11       #ps:Ljava/io/PrintStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v4           #lFReader:Ljava/io/FileReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v4           #lFReader:Ljava/io/FileReader;
    .end local v11           #ps:Ljava/io/PrintStream;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFound:Z
    .restart local v8       #lLine:Ljava/lang/String;
    .restart local v9       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_3
    move-exception v13

    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v11       #ps:Ljava/io/PrintStream;
    goto :goto_7

    .line 181
    .end local v6           #lFile:Ljava/io/File;
    .end local v7           #lFound:Z
    .end local v8           #lLine:Ljava/lang/String;
    .end local v9           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v1

    goto/16 :goto_1

    .end local v4           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFile:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v4           #lFReader:Ljava/io/FileReader;
    .end local v11           #ps:Ljava/io/PrintStream;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFound:Z
    .restart local v8       #lLine:Ljava/lang/String;
    .restart local v9       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v11       #ps:Ljava/io/PrintStream;
    goto/16 :goto_1

    .end local v11           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :cond_b
    move-object v11, v12

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v11       #ps:Ljava/io/PrintStream;
    goto/16 :goto_4

    .end local v4           #lFReader:Ljava/io/FileReader;
    .end local v11           #ps:Ljava/io/PrintStream;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :cond_c
    move-object v4, v5

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lFReader:Ljava/io/FileReader;
    goto :goto_5
.end method
