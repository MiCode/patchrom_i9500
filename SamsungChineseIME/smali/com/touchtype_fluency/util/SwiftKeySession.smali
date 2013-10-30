.class public abstract Lcom/touchtype_fluency/util/SwiftKeySession;
.super Ljava/lang/Object;
.source "SwiftKeySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1
    .parameter "license"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    invoke-direct {v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
.end method

.method public abstract clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
.end method

.method public abstract createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/touchtype_fluency/Predictions;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSession()Lcom/touchtype_fluency/Session;
.end method

.method public abstract loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end method

.method public abstract loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation
.end method

.method public abstract mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
.end method

.method public abstract replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetTemporaryModel()V
.end method

.method public abstract setDynamicModelsEnabled(Z)V
.end method

.method public abstract setExclusionPattern(Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;)V
.end method

.method public abstract setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
.end method

.method public abstract submitTask(Ljava/lang/Runnable;)V
.end method

.method public abstract writeDynamicModel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
