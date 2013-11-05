.class public Lcom/xiaomi/mipush/sdk/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/mipush/sdk/a$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/a;->l()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->a:Lcom/xiaomi/mipush/sdk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/a;->a:Lcom/xiaomi/mipush/sdk/a;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->a:Lcom/xiaomi/mipush/sdk/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    goto :goto_1
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/mipush/sdk/a$a;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/mipush/sdk/a$a;-><init>(Lcom/xiaomi/mipush/sdk/a;Lcom/xiaomi/mipush/sdk/a$1;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/a$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/a$a;->f:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->f:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/a$a;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "valid"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/a$a;->g:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    const-string v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/mipush/sdk/a$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t send message before initialization succeeded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/a$a;->a(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/a$a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a$a;->b()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a$a;->a()Z

    move-result v0

    return v0
.end method

.method public h()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->b:Landroid/content/Context;

    const-string v1, "mipush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a$a;->c()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->c:Lcom/xiaomi/mipush/sdk/a$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/a$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
