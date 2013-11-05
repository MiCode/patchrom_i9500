.class public Lcom/android/providers/settings/cloud/push/CompatChecker;
.super Ljava/lang/Object;
.source "CompatChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/cloud/push/CompatChecker$1;,
        Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static INST:Lcom/android/providers/settings/cloud/push/CompatChecker;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mActivityManager:Landroid/app/ActivityManager;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/cloud/push/CompatChecker;)Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/cloud/push/CompatChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/providers/settings/cloud/push/CompatChecker;
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/android/providers/settings/cloud/push/CompatChecker;->INST:Lcom/android/providers/settings/cloud/push/CompatChecker;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/providers/settings/cloud/push/CompatChecker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/settings/cloud/push/CompatChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/settings/cloud/push/CompatChecker;->INST:Lcom/android/providers/settings/cloud/push/CompatChecker;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/providers/settings/cloud/push/CompatChecker;->INST:Lcom/android/providers/settings/cloud/push/CompatChecker;

    return-object v0
.end method


# virtual methods
.method public checkExistCompat(Lcom/android/providers/settings/cloud/push/ExistCompatibility;)V
    .locals 7
    .parameter "compat"

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, pkgName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 103
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->isPrecise()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    .line 114
    invoke-virtual {p0, v3}, Lcom/android/providers/settings/cloud/push/CompatChecker;->deletePackage(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 117
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 120
    .local v4, version:I
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v5, v4, :cond_3

    .line 121
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mItem:Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/providers/settings/cloud/push/CompatChecker;->deletePackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkExistCompats(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/settings/cloud/push/ExistCompatibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, existCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/ExistCompatibility;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;

    .line 77
    .local v0, compat:Lcom/android/providers/settings/cloud/push/ExistCompatibility;
    invoke-virtual {p0, v0}, Lcom/android/providers/settings/cloud/push/CompatChecker;->checkExistCompat(Lcom/android/providers/settings/cloud/push/ExistCompatibility;)V

    goto :goto_0
.end method

.method public checkRunningCompat(Lcom/android/providers/settings/cloud/push/RunningCompatibility;)V
    .locals 7
    .parameter "compat"

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, pkgName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 142
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->isPrecise()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/push/RunningCompatibility;->getVersions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 156
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 158
    .local v4, version:I
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v5, v4, :cond_3

    .line 159
    iget-object v5, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkRunningCompats(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/settings/cloud/push/RunningCompatibility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, runningCompatData:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/settings/cloud/push/RunningCompatibility;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/cloud/push/RunningCompatibility;

    .line 86
    .local v0, compat:Lcom/android/providers/settings/cloud/push/RunningCompatibility;
    invoke-virtual {p0, v0}, Lcom/android/providers/settings/cloud/push/CompatChecker;->checkRunningCompat(Lcom/android/providers/settings/cloud/push/RunningCompatibility;)V

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 167
    new-instance v1, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;-><init>(Lcom/android/providers/settings/cloud/push/CompatChecker;Lcom/android/providers/settings/cloud/push/CompatChecker$1;)V

    .line 168
    .local v1, observer:Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;
    iget-object v2, p0, Lcom/android/providers/settings/cloud/push/CompatChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 169
    monitor-enter v1

    .line 170
    :goto_0
    :try_start_0
    iget-boolean v2, v1, Lcom/android/providers/settings/cloud/push/CompatChecker$PackageDeleteObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    return-void
.end method
