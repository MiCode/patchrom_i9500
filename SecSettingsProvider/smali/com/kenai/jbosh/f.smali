.class final Lcom/kenai/jbosh/f;
.super Lcom/kenai/jbosh/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kenai/jbosh/a;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/kenai/jbosh/f;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/f;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/f;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
