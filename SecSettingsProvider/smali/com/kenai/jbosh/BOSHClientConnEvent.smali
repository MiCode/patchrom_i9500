.class public final Lcom/kenai/jbosh/BOSHClientConnEvent;
.super Ljava/util/EventObject;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kenai/jbosh/BOSHClient;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->a:Z

    iput-object p4, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->c:Ljava/lang/Throwable;

    iget-boolean v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->a:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be connected and have a cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be connected and have outstanding requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->b:Ljava/util/List;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->b:Ljava/util/List;

    goto :goto_0
.end method

.method static a(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Lcom/kenai/jbosh/BOSHClient;Ljava/util/List;Ljava/lang/Throwable;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kenai/jbosh/BOSHClient;",
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/kenai/jbosh/BOSHClientConnEvent;"
        }
    .end annotation

    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static b(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->a:Z

    return v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->c:Ljava/lang/Throwable;

    return-object v0
.end method
