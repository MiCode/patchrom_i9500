.class public Lcom/xiaomi/channel/commonutils/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "sdk"

    const-string v3, "2A2FE0D7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->a:Z

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->b:Z

    const-string v0, "LOGABLE"

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->c:Z

    const-string v0, "sdk"

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->d:Z

    const-string v0, "sdk"

    const-string v3, "TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->e:Z

    const-string v0, "BETA"

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->f:Z

    const-string v0, "sdk"

    if-eqz v0, :cond_2

    const-string v0, "sdk"

    const-string v3, "RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    sput-boolean v2, Lcom/xiaomi/channel/commonutils/a/a;->g:Z

    const-string v0, "sdk"

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->h:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->h:Z

    return v0
.end method
