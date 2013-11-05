.class final Lcom/kenai/jbosh/o;
.super Lcom/kenai/jbosh/a;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/a",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/kenai/jbosh/o;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "1.8"

    invoke-static {v0}, Lcom/kenai/jbosh/o;->a(Ljava/lang/String;)Lcom/kenai/jbosh/o;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/o;->a:Lcom/kenai/jbosh/o;
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/kenai/jbosh/a;-><init>(Ljava/lang/Comparable;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal ver attribute value (not in major.minor form): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kenai/jbosh/o;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/kenai/jbosh/o;->b:I

    if-gez v1, :cond_1

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Major version may not be < 0"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse ver attribute value (major ver): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kenai/jbosh/o;->c:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget v0, p0, Lcom/kenai/jbosh/o;->c:I

    if-gez v0, :cond_2

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Minor version may not be < 0"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse ver attribute value (minor ver): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/kenai/jbosh/o;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/o;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/o;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b()Lcom/kenai/jbosh/o;
    .locals 1

    sget-object v0, Lcom/kenai/jbosh/o;->a:Lcom/kenai/jbosh/o;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/kenai/jbosh/o;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/kenai/jbosh/o;

    iget v2, p0, Lcom/kenai/jbosh/o;->b:I

    iget v3, p1, Lcom/kenai/jbosh/o;->b:I

    if-ge v2, v3, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/kenai/jbosh/o;->b:I

    iget v3, p1, Lcom/kenai/jbosh/o;->b:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/kenai/jbosh/o;->c:I

    iget v3, p1, Lcom/kenai/jbosh/o;->c:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/kenai/jbosh/o;->c:I

    iget v3, p1, Lcom/kenai/jbosh/o;->c:I

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
