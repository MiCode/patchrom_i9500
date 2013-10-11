.class public Landroid/media/UIBCInputHandler;
.super Ljava/lang/Object;
.source "UIBCInputHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIBCInputHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWfdSinkManager:Lcom/samsung/wfd/WfdManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 19
    iput-object v0, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    .line 25
    const-string v0, "UIBCInputHandler.java"

    const-string v1, "UIBCInputHandler construct"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method public handleDown(I[I[I[I)V
    .locals 3
    .parameter "pointers"
    .parameter "id"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 50
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/WfdManager;->handleDown(I[I[I[I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "UIBCInputHandler.java"

    const-string v2, "NoSuchMethod - mWfdSinkManager.handleDown()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMove(I[I[I[I)V
    .locals 3
    .parameter "pointers"
    .parameter "id"
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    .line 41
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 43
    :try_start_0
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/WfdManager;->handleMove(I[I[I[I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "UIBCInputHandler.java"

    const-string v2, "NoSuchMethod - mWfdSinkManager.handleMove()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUp(I[I[I[I)V
    .locals 3
    .parameter "pointers"
    .parameter "id"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 59
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/WfdManager;->handleUp(I[I[I[I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "UIBCInputHandler.java"

    const-string v2, "NoSuchMethod - mWfdSinkManager.handleUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 29
    iget-object v2, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v3, "wfd"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdManager;

    iput-object v2, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, isActive:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->isActiveUIBC()Z

    move-result v1

    .line 33
    const-string v2, "UIBCInputHandler.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UIBC Active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "UIBCInputHandler.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public keyDown(II)V
    .locals 3
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 68
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/wfd/WfdManager;->keyDown(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "UIBCInputHandler.java"

    const-string v2, "NoSuchMethod - mWfdSinkManager.keyDown()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public keyUp(II)V
    .locals 3
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 77
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v2, "wfd"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/media/UIBCInputHandler;->mWfdSinkManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/wfd/WfdManager;->keyUp(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "UIBCInputHandler.java"

    const-string v2, "NoSuchMethod - mWfdSinkManager.keyUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
