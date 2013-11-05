.class public Lcom/android/providers/settings/cloud/push/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInstallCompatData(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/settings/cloud/push/CloudEntity$InstallCompatibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static clearRunningCompatData(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/settings/cloud/push/CloudEntity$RunningCompatibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static insertInstallCompatData(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/settings/cloud/push/InstallCompatibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, forbidInstalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/InstallCompatibility;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/cloud/push/InstallCompatibility;

    .line 71
    .local v3, res:Lcom/android/providers/settings/cloud/push/InstallCompatibility;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "c_package_name"

    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v8, "c_message"

    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->isPrecise()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const-string v8, "c_precise"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    :goto_1
    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v6

    .line 84
    .local v6, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v7, versions:Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 87
    .local v4, v:Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Ljava/lang/Integer;
    .end local v6           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7           #versions:Ljava/lang/StringBuilder;
    :cond_0
    const-string v8, "c_precise"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 90
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7       #versions:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v8, "c_versions"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #versions:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v8, Lcom/android/providers/settings/cloud/push/CloudEntity$InstallCompatibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 97
    .end local v3           #res:Lcom/android/providers/settings/cloud/push/InstallCompatibility;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    return-void
.end method

.method public static insertRunningCompatData(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/settings/cloud/push/RunningCompatibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, forbidStarts:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/RunningCompatibility;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/settings/cloud/push/RunningCompatibility;

    .line 103
    .local v3, res:Lcom/android/providers/settings/cloud/push/RunningCompatibility;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "c_package_name"

    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v8, "c_message"

    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->isPrecise()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    const-string v8, "c_precise"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :goto_1
    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v6

    .line 116
    .local v6, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v7, versions:Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 119
    .local v4, v:Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 111
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Ljava/lang/Integer;
    .end local v6           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7           #versions:Ljava/lang/StringBuilder;
    :cond_0
    const-string v8, "c_precise"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 122
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7       #versions:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v8, "c_versions"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #versions:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v8, Lcom/android/providers/settings/cloud/push/CloudEntity$RunningCompatibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 129
    .end local v3           #res:Lcom/android/providers/settings/cloud/push/RunningCompatibility;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    return-void
.end method
