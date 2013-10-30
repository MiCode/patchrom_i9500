.class public Lcom/nuance/swype/connect/api/HandlerRegistry;
.super Ljava/lang/Object;
.source "HandlerRegistry.java"


# instance fields
.field final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/api/ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field final messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/api/ConnectHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->messageMap:Ljava/util/Map;

    .line 22
    return-void
.end method

.method private mapMessages(Lcom/nuance/swype/connect/api/ConnectHandler;)V
    .locals 7
    .parameter "handler"

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/nuance/swype/connect/api/ConnectHandler;->getMessageIDs()[I

    move-result-object v4

    if-nez v4, :cond_1

    .line 61
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-interface {p1}, Lcom/nuance/swype/connect/api/ConnectHandler;->getMessageIDs()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 56
    .local v3, message:I
    iget-object v4, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->messageMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than one handler is processing this message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->messageMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/swype/connect/api/ConnectHandler;)Lcom/nuance/swype/connect/api/HandlerRegistry;
    .locals 2
    .parameter "handler"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/swype/connect/api/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/swype/connect/api/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/api/HandlerRegistry;->mapMessages(Lcom/nuance/swype/connect/api/ConnectHandler;)V

    .line 29
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/nuance/swype/connect/api/HandlerRegistry;
    .locals 2
    .parameter "handlerName"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-object p0
.end method

.method public getHandlerByName(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectHandler;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectHandler;

    return-object v0
.end method

.method public getRegisteredHandlers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/StringUtils;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHandler(Ljava/lang/String;)Z
    .locals 1
    .parameter "handlerName"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postUpgrade()V
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectHandler;

    .line 81
    .local v0, handler:Lcom/nuance/swype/connect/api/ConnectHandler;
    invoke-interface {v0}, Lcom/nuance/swype/connect/api/ConnectHandler;->onPostUpgrade()V

    goto :goto_0

    .line 83
    .end local v0           #handler:Lcom/nuance/swype/connect/api/ConnectHandler;
    :cond_0
    return-void
.end method

.method public tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 3
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->messageMap:Ljava/util/Map;

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/connect/api/HandlerRegistry;->messageMap:Ljava/util/Map;

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectHandler;

    .line 66
    .local v0, h:Lcom/nuance/swype/connect/api/ConnectHandler;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/api/ConnectHandler;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 69
    const/4 v1, 0x1

    .line 76
    .end local v0           #h:Lcom/nuance/swype/connect/api/ConnectHandler;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
