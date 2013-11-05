.class final Lcom/kenai/jbosh/n;
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

.method static a(Ljava/lang/String;)Lcom/kenai/jbosh/n;
    .locals 1

    new-instance v0, Lcom/kenai/jbosh/n;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
