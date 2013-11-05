.class final Lcom/kenai/jbosh/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/kenai/jbosh/n;

.field private final b:Lcom/kenai/jbosh/p;

.field private final c:Lcom/kenai/jbosh/o;

.field private final d:Lcom/kenai/jbosh/l;

.field private final e:Lcom/kenai/jbosh/i;

.field private final f:Lcom/kenai/jbosh/m;

.field private final g:Lcom/kenai/jbosh/h;

.field private final h:Lcom/kenai/jbosh/e;

.field private final i:Lcom/kenai/jbosh/j;

.field private final j:Lcom/kenai/jbosh/f;

.field private final k:Lcom/kenai/jbosh/g;

.field private final l:Z


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/n;Lcom/kenai/jbosh/p;Lcom/kenai/jbosh/o;Lcom/kenai/jbosh/l;Lcom/kenai/jbosh/i;Lcom/kenai/jbosh/m;Lcom/kenai/jbosh/h;Lcom/kenai/jbosh/e;Lcom/kenai/jbosh/j;Lcom/kenai/jbosh/f;Lcom/kenai/jbosh/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kenai/jbosh/x;->a:Lcom/kenai/jbosh/n;

    iput-object p2, p0, Lcom/kenai/jbosh/x;->b:Lcom/kenai/jbosh/p;

    iput-object p3, p0, Lcom/kenai/jbosh/x;->c:Lcom/kenai/jbosh/o;

    iput-object p4, p0, Lcom/kenai/jbosh/x;->d:Lcom/kenai/jbosh/l;

    iput-object p5, p0, Lcom/kenai/jbosh/x;->e:Lcom/kenai/jbosh/i;

    iput-object p6, p0, Lcom/kenai/jbosh/x;->f:Lcom/kenai/jbosh/m;

    iput-object p7, p0, Lcom/kenai/jbosh/x;->g:Lcom/kenai/jbosh/h;

    iput-object p8, p0, Lcom/kenai/jbosh/x;->h:Lcom/kenai/jbosh/e;

    iput-object p9, p0, Lcom/kenai/jbosh/x;->i:Lcom/kenai/jbosh/j;

    iput-object p10, p0, Lcom/kenai/jbosh/x;->j:Lcom/kenai/jbosh/f;

    iput-object p11, p0, Lcom/kenai/jbosh/x;->k:Lcom/kenai/jbosh/g;

    iput-boolean p12, p0, Lcom/kenai/jbosh/x;->l:Z

    return-void
.end method

.method static a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/x;
    .locals 13

    sget-object v0, Lcom/kenai/jbosh/q;->c:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/f;->a(Ljava/lang/String;)Lcom/kenai/jbosh/f;

    move-result-object v10

    sget-object v0, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/kenai/jbosh/f;->a()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    new-instance v0, Lcom/kenai/jbosh/x;

    sget-object v1, Lcom/kenai/jbosh/q;->t:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v1}, Lcom/kenai/jbosh/x;->a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kenai/jbosh/n;->a(Ljava/lang/String;)Lcom/kenai/jbosh/n;

    move-result-object v1

    sget-object v2, Lcom/kenai/jbosh/q;->z:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v2}, Lcom/kenai/jbosh/x;->a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kenai/jbosh/p;->a(Ljava/lang/String;)Lcom/kenai/jbosh/p;

    move-result-object v2

    sget-object v3, Lcom/kenai/jbosh/q;->y:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v3}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kenai/jbosh/o;->a(Ljava/lang/String;)Lcom/kenai/jbosh/o;

    move-result-object v3

    sget-object v4, Lcom/kenai/jbosh/q;->n:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v4}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kenai/jbosh/l;->a(Ljava/lang/String;)Lcom/kenai/jbosh/l;

    move-result-object v4

    sget-object v5, Lcom/kenai/jbosh/q;->i:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v5}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kenai/jbosh/i;->a(Ljava/lang/String;)Lcom/kenai/jbosh/i;

    move-result-object v5

    sget-object v6, Lcom/kenai/jbosh/q;->p:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v6}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kenai/jbosh/m;->a(Ljava/lang/String;)Lcom/kenai/jbosh/m;

    move-result-object v6

    sget-object v7, Lcom/kenai/jbosh/q;->h:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v7}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kenai/jbosh/h;->a(Ljava/lang/String;)Lcom/kenai/jbosh/h;

    move-result-object v7

    sget-object v8, Lcom/kenai/jbosh/q;->a:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v8}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kenai/jbosh/e;->a(Ljava/lang/String;)Lcom/kenai/jbosh/e;

    move-result-object v8

    sget-object v9, Lcom/kenai/jbosh/q;->k:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v9}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kenai/jbosh/j;->a(Ljava/lang/String;)Lcom/kenai/jbosh/j;

    move-result-object v9

    sget-object v11, Lcom/kenai/jbosh/q;->d:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v11}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kenai/jbosh/g;->a(Ljava/lang/String;)Lcom/kenai/jbosh/g;

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lcom/kenai/jbosh/x;-><init>(Lcom/kenai/jbosh/n;Lcom/kenai/jbosh/p;Lcom/kenai/jbosh/o;Lcom/kenai/jbosh/l;Lcom/kenai/jbosh/i;Lcom/kenai/jbosh/m;Lcom/kenai/jbosh/h;Lcom/kenai/jbosh/e;Lcom/kenai/jbosh/j;Lcom/kenai/jbosh/f;Lcom/kenai/jbosh/g;Z)V

    return-object v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection Manager session creation response did not include required \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kenai/jbosh/BodyQName;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Lcom/kenai/jbosh/n;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/x;->a:Lcom/kenai/jbosh/n;

    return-object v0
.end method

.method b()Lcom/kenai/jbosh/p;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/x;->b:Lcom/kenai/jbosh/p;

    return-object v0
.end method

.method c()Lcom/kenai/jbosh/o;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/x;->c:Lcom/kenai/jbosh/o;

    return-object v0
.end method

.method d()Lcom/kenai/jbosh/l;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/x;->d:Lcom/kenai/jbosh/l;

    return-object v0
.end method

.method e()Lcom/kenai/jbosh/j;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/x;->i:Lcom/kenai/jbosh/j;

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kenai/jbosh/x;->l:Z

    return v0
.end method
