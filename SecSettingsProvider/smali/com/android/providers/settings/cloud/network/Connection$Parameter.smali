.class public Lcom/android/providers/settings/cloud/network/Connection$Parameter;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/cloud/network/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameter"
.end annotation


# instance fields
.field private params:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/settings/cloud/network/Connection;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/cloud/network/Connection;)V
    .locals 1
    .parameter

    .prologue
    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;-><init>(Lcom/android/providers/settings/cloud/network/Connection;Z)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/settings/cloud/network/Connection;Z)V
    .locals 1
    .parameter
    .parameter "bindToConnection"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    .line 385
    if-eqz p2, :cond_0

    .line 387
    iput-object p0, p1, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 389
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 400
    if-nez p2, :cond_0

    .line 401
    const-string p2, ""

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-object p0
.end method

.method protected addBaseParameter()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    const-string v1, "sdk"

    sget v2, Lcom/android/providers/settings/cloud/util/Client;->SDK_VERSION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 393
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    const-string v1, "os"

    sget-object v2, Lcom/android/providers/settings/cloud/util/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 394
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    const-string v1, "la"

    sget-object v2, Lcom/android/providers/settings/cloud/util/Client;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 395
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    const-string v1, "co"

    sget-object v2, Lcom/android/providers/settings/cloud/util/Client;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 396
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->this$0:Lcom/android/providers/settings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    const-string v1, "ro"

    sget-object v2, Lcom/android/providers/settings/cloud/util/Client;->RO_CARRIER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 397
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 425
    iget-object v3, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    const-string v3, ""

    .line 438
    :goto_0
    return-object v3

    .line 428
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_2
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 438
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 434
    .restart local v1       #key:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2
.end method
