.class public final Lcom/kenai/jbosh/BOSHClientConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BOSHClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljavax/net/ssl/SSLContext;

.field private i:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection manager URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target domain must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'http\' and \'https\' URI are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host name cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy port must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->f:Ljava/lang/String;

    iput p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->g:I

    return-object p0
.end method

.method public a()Lcom/kenai/jbosh/BOSHClientConfig;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v4, "en"

    :goto_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    move v7, v0

    :goto_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v9, v0

    :goto_2
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->h:Ljavax/net/ssl/SSLContext;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/kenai/jbosh/BOSHClientConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZLcom/kenai/jbosh/BOSHClientConfig$1;)V

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->g:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_2
.end method
