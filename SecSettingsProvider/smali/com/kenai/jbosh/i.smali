.class final Lcom/kenai/jbosh/i;
.super Lcom/kenai/jbosh/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/kenai/jbosh/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/i;->a(I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/kenai/jbosh/i;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/i;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/i;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
