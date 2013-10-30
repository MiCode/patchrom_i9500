.class public Lcom/samsung/inputmethod/setting/SimeVersionInfo;
.super Ljava/lang/Object;
.source "SimeVersionInfo.java"


# static fields
.field private static final BUILT_TIME_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final BUILT_TIME_FORMAT_FORM_NATIVE:Ljava/lang/String; = "MMM dd yyyy HH:mm:ss"

.field private static final TAG:Ljava/lang/String; = "SimeVersionInfo"


# instance fields
.field private packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private unkown:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageName:Ljava/lang/String;

    .line 62
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->unkown:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getHwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->nativeGetHwVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastBuiltTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->nativeGetLastBuiltTime()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, builtTime:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd yyyy HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    .local v4, nativeDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 97
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v3

    .line 103
    .local v3, e:Ljava/text/ParseException;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimeVersionCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, version:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SimeVersionInfo"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimeVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    const-string v1, ""

    .line 141
    .local v1, version:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SimeVersionInfo"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getXt9Version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->nativeGetXt9Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSimeVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->unkown:Ljava/lang/String;

    .line 121
    .local v0, versionCode:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getSimeVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getHwVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getXt9Version()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getLastBuiltTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method native nativeGetHwVersion()Ljava/lang/String;
.end method

.method native nativeGetLastBuiltTime()Ljava/lang/String;
.end method

.method native nativeGetXt9Version()Ljava/lang/String;
.end method
