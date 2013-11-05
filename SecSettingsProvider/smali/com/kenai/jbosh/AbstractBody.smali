.class public abstract Lcom/kenai/jbosh/AbstractBody;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/kenai/jbosh/BodyQName;
    .locals 1

    const-string v0, "body"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/kenai/jbosh/AbstractBody;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method
