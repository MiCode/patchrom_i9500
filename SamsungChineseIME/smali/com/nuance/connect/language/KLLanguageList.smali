.class Lcom/nuance/connect/language/KLLanguageList;
.super Ljava/lang/Object;
.source "KLLanguageList.java"


# static fields
.field private static final languageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/nuance/connect/language/KLLanguageList$1;

    invoke-direct {v0}, Lcom/nuance/connect/language/KLLanguageList$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/language/KLLanguageList;->languageList:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static findLanguageById(I)Ljava/lang/String;
    .locals 7
    .parameter "xt9LanguageId"

    .prologue
    .line 127
    sget-object v6, Lcom/nuance/connect/language/KLLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    .local v4, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, v0, v2

    .line 129
    .local v3, id:I
    if-ne p0, v3, :cond_1

    .line 130
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v5           #len$:I
    :goto_1
    return-object v6

    .line 128
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #id:I
    .restart local v4       #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v5           #len$:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected static findLanguageIdByName(Ljava/lang/String;)I
    .locals 4
    .parameter "languageName"

    .prologue
    .line 139
    sget-object v2, Lcom/nuance/connect/language/KLLanguageList;->languageList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .local v1, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 145
    .end local v1           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method protected static getLanguageList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/nuance/connect/language/KLLanguageList;->languageList:Ljava/util/Map;

    return-object v0
.end method
