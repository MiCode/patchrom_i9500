.class Lcom/touchtype_fluency/util/LanguagePacks;
.super Ljava/lang/Object;
.source "LanguagePacks.java"


# instance fields
.field private mLanguagePacks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePackImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V
    .locals 7
    .parameter "json"
    .parameter "storage"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 26
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 27
    .local v3, length:I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    .line 28
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePacks;->sortByName()V

    .line 36
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #length:I
    :goto_1
    return-void

    .line 29
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #length:I
    :cond_0
    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    new-instance v5, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Lcom/touchtype_fluency/util/LanguagePackImpl;-><init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #length:I
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    goto :goto_1
.end method

.method private sortByName()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    new-instance v1, Lcom/touchtype_fluency/util/LanguagePacks$1;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/LanguagePacks$1;-><init>(Lcom/touchtype_fluency/util/LanguagePacks;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "that_"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/touchtype_fluency/util/LanguagePacks;

    .line 71
    .local v0, that:Lcom/touchtype_fluency/util/LanguagePacks;
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    iget-object v2, v0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method findByID(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackImpl;
    .locals 3
    .parameter "id"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 107
    .local v0, languagePack:Lcom/touchtype_fluency/util/LanguagePackImpl;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getLanguagePacks(Z)Ljava/util/List;
    .locals 4
    .parameter "all"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, ans:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    return-object v0

    .line 85
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 86
    .local v1, languagePack:Lcom/touchtype_fluency/util/LanguagePackImpl;
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public merge(Lcom/touchtype_fluency/util/LanguagePacks;)V
    .locals 4
    .parameter "fromPacks"

    .prologue
    .line 56
    iget-object v2, p1, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    return-void

    .line 56
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 57
    .local v0, from:Lcom/touchtype_fluency/util/LanguagePackImpl;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/touchtype_fluency/util/LanguagePacks;->findByID(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackImpl;

    move-result-object v1

    .line 58
    .local v1, to:Lcom/touchtype_fluency/util/LanguagePackImpl;
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->merge(Lcom/touchtype_fluency/util/LanguagePackImpl;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 41
    .local v1, languagePack:Lcom/touchtype_fluency/util/LanguagePackImpl;
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, s:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePacks;->mLanguagePacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 49
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 50
    .local v0, languagePack:Lcom/touchtype_fluency/util/LanguagePackImpl;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
