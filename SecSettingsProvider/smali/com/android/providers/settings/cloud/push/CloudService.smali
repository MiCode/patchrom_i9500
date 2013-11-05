.class public Lcom/android/providers/settings/cloud/push/CloudService;
.super Landroid/app/IntentService;
.source "CloudService.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/providers/settings/cloud/push/CloudService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/cloud/push/CloudService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/providers/settings/cloud/push/CloudService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private checkExistCompats(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/settings/cloud/push/ExistCompatibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, existCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/ExistCompatibility;>;"
    invoke-static {p1}, Lcom/android/providers/settings/cloud/push/CompatChecker;->getInstance(Landroid/content/Context;)Lcom/android/providers/settings/cloud/push/CompatChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/providers/settings/cloud/push/CompatChecker;->checkExistCompats(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method private checkRunningCompats(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 167
    .local p2, runningCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/RunningCompatibility;>;"
    invoke-static {p1}, Lcom/android/providers/settings/cloud/push/CompatChecker;->getInstance(Landroid/content/Context;)Lcom/android/providers/settings/cloud/push/CompatChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/providers/settings/cloud/push/CompatChecker;->checkRunningCompats(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method private insertExistCompats(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 17
    .parameter "context"
    .parameter "existCompats"

    .prologue
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, existCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/ExistCompatibility;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 63
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 64
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    .local v2, compat:Lorg/json/JSONObject;
    new-instance v10, Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    invoke-direct {v10}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;-><init>()V

    .line 67
    .local v10, res:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    const-string v15, "pkg_name"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, pkgName:Ljava/lang/String;
    const-string v15, "message"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, message:Ljava/lang/String;
    const-string v15, "title"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, title:Ljava/lang/String;
    const-string v15, "ticker"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, tricker:Ljava/lang/String;
    const-string v15, "flag_precise"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 72
    .local v9, precise:Z
    invoke-virtual {v10, v8}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setPackageName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v10, v7}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setMessage(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v10, v11}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v10, v12}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setTicker(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v10, v9}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setPrecise(Z)V

    .line 78
    const-string v15, "versions"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 79
    .local v14, versions:Lorg/json/JSONArray;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 80
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v13, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v5, v15, :cond_0

    .line 82
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v10, v13}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->setVersions(Ljava/util/Set;)V

    .line 87
    .end local v5           #j:I
    .end local v13           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v2           #compat:Lorg/json/JSONObject;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #pkgName:Ljava/lang/String;
    .end local v9           #precise:Z
    .end local v10           #res:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #tricker:Ljava/lang/String;
    .end local v14           #versions:Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/cloud/push/CloudService;->checkExistCompats(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method private insertInstallCompats(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 13
    .parameter "context"
    .parameter "installCompats"

    .prologue
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, installCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/InstallCompatibility;>;"
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 101
    .local v4, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 102
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    .local v0, compat:Lorg/json/JSONObject;
    new-instance v8, Lcom/android/providers/settings/cloud/push/InstallCompatibility;

    invoke-direct {v8}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;-><init>()V

    .line 105
    .local v8, res:Lcom/android/providers/settings/cloud/push/InstallCompatibility;
    const-string v11, "pkg_name"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, pkgName:Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, message:Ljava/lang/String;
    const-string v11, "flag_precise"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 108
    .local v7, precise:Z
    invoke-virtual {v8, v6}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->setPackageName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8, v5}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->setMessage(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v8, v7}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->setPrecise(Z)V

    .line 112
    const-string v11, "versions"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 113
    .local v10, versions:Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 114
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v9, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 116
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v8, v9}, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->setVersions(Ljava/util/Set;)V

    .line 121
    .end local v3           #j:I
    .end local v9           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0           #compat:Lorg/json/JSONObject;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #precise:Z
    .end local v8           #res:Lcom/android/providers/settings/cloud/push/InstallCompatibility;
    .end local v10           #versions:Lorg/json/JSONArray;
    :cond_2
    invoke-static {p1}, Lcom/android/providers/settings/cloud/push/CloudManager;->clearInstallCompatData(Landroid/content/Context;)I

    .line 126
    invoke-static {p1, v2}, Lcom/android/providers/settings/cloud/push/CloudManager;->insertInstallCompatData(Landroid/content/Context;Ljava/util/List;)V

    .line 127
    return-void
.end method

.method private insertRunningCompats(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 13
    .parameter "context"
    .parameter "runningCompats"

    .prologue
    .line 130
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v8, runningCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/RunningCompatibility;>;"
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 132
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 133
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    .local v0, compat:Lorg/json/JSONObject;
    new-instance v7, Lcom/android/providers/settings/cloud/push/RunningCompatibility;

    invoke-direct {v7}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;-><init>()V

    .line 136
    .local v7, res:Lcom/android/providers/settings/cloud/push/RunningCompatibility;
    const-string v11, "pkg_name"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, pkgName:Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, message:Ljava/lang/String;
    const-string v11, "flag_precise"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 139
    .local v6, precise:Z
    invoke-virtual {v7, v5}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->setPackageName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v7, v4}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->setMessage(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7, v6}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->setPrecise(Z)V

    .line 143
    const-string v11, "versions"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 144
    .local v10, versions:Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 145
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v9, versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 147
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v7, v9}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->setVersions(Ljava/util/Set;)V

    .line 152
    .end local v2           #j:I
    .end local v9           #versionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #compat:Lorg/json/JSONObject;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #precise:Z
    .end local v7           #res:Lcom/android/providers/settings/cloud/push/RunningCompatibility;
    .end local v10           #versions:Lorg/json/JSONArray;
    :cond_2
    invoke-static {p1}, Lcom/android/providers/settings/cloud/push/CloudManager;->clearRunningCompatData(Landroid/content/Context;)I

    .line 157
    invoke-static {p1, v8}, Lcom/android/providers/settings/cloud/push/CloudManager;->insertRunningCompatData(Landroid/content/Context;Ljava/util/List;)V

    .line 159
    invoke-direct {p0, p1, v8}, Lcom/android/providers/settings/cloud/push/CloudService;->checkRunningCompats(Landroid/content/Context;Ljava/util/List;)V

    .line 160
    return-void
.end method

.method private parseContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "cont"

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, content:Lorg/json/JSONObject;
    const-string v5, "exist_compatibility"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, existCompats:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 41
    invoke-direct {p0, p1, v2}, Lcom/android/providers/settings/cloud/push/CloudService;->insertExistCompats(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 45
    :cond_0
    const-string v5, "install_compatibility"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, installCompats:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 47
    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/cloud/push/CloudService;->insertInstallCompats(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 51
    :cond_1
    const-string v5, "running_compatibility"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 52
    .local v4, runningCompats:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 53
    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/cloud/push/CloudService;->insertRunningCompats(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #content:Lorg/json/JSONObject;
    .end local v2           #existCompats:Lorg/json/JSONArray;
    .end local v3           #installCompats:Lorg/json/JSONArray;
    .end local v4           #runningCompats:Lorg/json/JSONArray;
    :cond_2
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 28
    const-string v1, "push_content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-direct {p0, p0, v0}, Lcom/android/providers/settings/cloud/push/CloudService;->parseContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
