.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;
.super Ljava/lang/Object;
.source "SimeDecXT9PredictImpl.java"

# interfaces
.implements Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9PredictImpl"


# instance fields
.field private curLangString:Ljava/lang/String;

.field private mActiveCandIdx:I

.field private mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 19
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mActiveCandIdx:I

    .line 25
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 26
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mActiveCandIdx:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public configFeature(Ljava/lang/String;)Z
    .locals 5
    .parameter "language"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->reset()V

    .line 77
    const-string v2, "zh_CN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh_HK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh_TW"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "en"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ko"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetLanguage(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x1

    .line 93
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 94
    const-string v2, "SimeDecXT9PredictImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----configFeature-----bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9PredictImpl"

    const-string v3, "set Language failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mActiveCandIdx:I

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z
    .locals 6
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

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 38
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 39
    const-string v3, "SimeDecXT9PredictImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----preparePredicts----curLangString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mActiveCandIdx:I

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, preEdit:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWCandidatesList(Ljava/util/List;)V

    .line 48
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetActiveIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mActiveCandIdx:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    const/4 v0, 0x1

    .line 61
    .end local v2           #preEdit:Ljava/lang/String;
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 62
    const-string v3, "SimeDecXT9PredictImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----preparePredicts-----bRet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    return v0

    .line 51
    .restart local v2       #preEdit:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->curLangString:Ljava/lang/String;

    const-string v4, "ko"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, v2, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetPredictionList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 54
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;->mService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, v2, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetPredictionList(Ljava/lang/String;Ljava/util/List;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
