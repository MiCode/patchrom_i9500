.class Lcom/touchtype_fluency/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 10
    sget-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 11
    .local v0, logger:Lcom/touchtype_fluency/LoggingListener;
    if-eqz v0, :cond_0

    .line 12
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->DEBUG:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 22
    sget-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 23
    .local v0, logger:Lcom/touchtype_fluency/LoggingListener;
    if-eqz v0, :cond_0

    .line 24
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->SEVERE:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 16
    sget-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 17
    .local v0, logger:Lcom/touchtype_fluency/LoggingListener;
    if-eqz v0, :cond_0

    .line 18
    sget-object v1, Lcom/touchtype_fluency/LoggingListener$Level;->INFO:Lcom/touchtype_fluency/LoggingListener$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/LoggingListener;->log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method
