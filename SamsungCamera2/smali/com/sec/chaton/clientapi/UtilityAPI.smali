.class public Lcom/sec/chaton/clientapi/UtilityAPI;
.super Ljava/lang/Object;
.source "UtilityAPI.java"


# static fields
.field protected static final CHATON_CANADA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.chatonforcanada"

.field protected static final CHATON_DOWNLOAD_URL:Ljava/lang/String; = "http://www.chaton.com/invite.html"

.field protected static final CHATON_PACKAGE_NAME:Ljava/lang/String; = "com.sec.chaton"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getChatONVersionCode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x40

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 107
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 110
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v3, "com.sec.chaton"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v3

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "com.sec.chatonforcanada"

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method static varargs isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 8
    .parameter "context"
    .parameter
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 85
    .local v2, method:Ljava/lang/reflect/Method;
    const-class v6, Lcom/sec/chaton/clientapi/API;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sec/chaton/clientapi/API;

    .line 88
    .local v0, api:Lcom/sec/chaton/clientapi/API;
    invoke-interface {v0}, Lcom/sec/chaton/clientapi/API;->versionCode()I

    move-result v6

    int-to-long v3, v6

    .line 90
    .local v3, versionCode:J
    invoke-static {p0}, Lcom/sec/chaton/clientapi/UtilityAPI;->getChatONVersionCode(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v3, v6

    if-gtz v6, :cond_0

    .line 91
    const/4 v5, 0x1

    .line 102
    .end local v0           #api:Lcom/sec/chaton/clientapi/API;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #versionCode:J
    :cond_0
    :goto_0
    return v5

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isChatONActivated(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    const-class v4, Lcom/sec/chaton/clientapi/UtilityAPI;

    const-string v5, "isChatONActivated"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-static {p0, v4, v5, v6}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    new-instance v2, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    const-string v3, "API isn\'t availble. please check your ChatON version."

    invoke-direct {v2, v3}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sec/chaton/clientapi/GraphAPI;->getMyProfile(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v3

    goto :goto_0

    .line 74
    .end local v1           #e:Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static isChatONInstalled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 34
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.sec.chaton"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v3, "com.sec.chatonforcanada"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static openChatONDownloadPage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "http://www.chaton.com/invite.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
