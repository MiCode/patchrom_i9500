.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerCallbackManager"
.end annotation


# instance fields
.field mContainerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 1

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    .line 2490
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 3
    .parameter "containerId"
    .parameter "callback"

    .prologue
    .line 2493
    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2496
    .local v0, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2497
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    .restart local v0       #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    .end local v0           #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_0
    :goto_0
    return-void

    .line 2500
    .restart local v0       #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_1
    if-eqz p2, :cond_0

    .line 2501
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .parameter "containerId"

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
