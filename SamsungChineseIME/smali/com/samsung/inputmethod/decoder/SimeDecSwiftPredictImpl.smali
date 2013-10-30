.class public Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;
.super Ljava/lang/Object;
.source "SimeDecSwiftPredictImpl.java"

# interfaces
.implements Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecSwiftPredictImpl"


# instance fields
.field private curLangString:Ljava/lang/String;

.field private mActiveCandIdx:I

.field private mDefaultResultFilter:Lcom/touchtype_fluency/ResultsFilter;

.field mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 19
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->curLangString:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mActiveCandIdx:I

    .line 21
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mDefaultResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 25
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 26
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mActiveCandIdx:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->curLangString:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public configFeature(Ljava/lang/String;)Z
    .locals 4
    .parameter "language"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->reset()V

    .line 66
    const-string v1, "zh_CN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_TW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ko"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLanguage(Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->curLangString:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    .line 77
    :cond_1
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "SimeDecSwiftPredictImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----configFeature-----bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mActiveCandIdx:I

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z
    .locals 5
    .parameter "history"
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v0, 0x0

    .line 37
    .local v0, bRet:Z
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->curLangString:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 38
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "SimeDecSwiftPredictImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----preparePredicts----curLangString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->curLangString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mActiveCandIdx:I

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, preEdit:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 45
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2, v1, p2, p3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredicts(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)I

    .line 50
    .end local v1           #preEdit:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 51
    const-string v2, "SimeDecSwiftPredictImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----preparePredicts-----bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    return v0

    .line 46
    .restart local v1       #preEdit:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_1

    .line 47
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;->mDefaultResultFilter:Lcom/touchtype_fluency/ResultsFilter;

    invoke-virtual {v2, v1, p2, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredicts(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)I

    goto :goto_0
.end method
