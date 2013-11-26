.class public Lcom/sec/android/app/camera/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri; = null

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_PROJECTION:[Ljava/lang/String; = null

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0x6

.field private static final INDEX_TITLE:I = 0x5

.field private static final INDEX_VERSION:I = 0x3

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mContext:Landroid/content/Context;

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsExternalMenuView:Z


# instance fields
.field private mFilterDBObserver:Landroid/database/ContentObserver;

.field private mFilterExist:Z

.field private mIsDBChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const-class v0, Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    .line 43
    sput-boolean v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vendor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "package_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    .line 55
    new-instance v0, Lcom/sec/android/app/camera/ExternalFilterLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    .line 65
    sput-object p1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    return p1
.end method

.method public static isExternalMenuView()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsExternalMenuView:Z

    return v0
.end method

.method public static setExternalMenuView(Z)V
    .locals 0
    .parameter "isExternalMenu"

    .prologue
    .line 139
    sput-boolean p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 140
    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 2
    .parameter "destory"

    .prologue
    const/4 v1, 0x0

    .line 114
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    sput-boolean v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsExternalMenuView:Z

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mContext:Landroid/content/Context;

    .line 120
    :cond_0
    return-void
.end method

.method public getExternalEffectCount()I
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalEffectsId(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 193
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v0

    return v0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 197
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    .end local v0           #title:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #title:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, fullName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 209
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 204
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, name:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExternalEffect(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 225
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterDBChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    if-eqz v1, :cond_0

    .line 144
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0
.end method

.method public isFilterLoaded()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return v0
.end method

.method public loadExternalFilters()Z
    .locals 14

    .prologue
    .line 69
    const/4 v10, 0x0

    .line 71
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 72
    const/4 v12, 0x0

    .line 73
    .local v12, filterCount:I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 76
    .local v2, id:I
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, effectName:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v0, "Unnamed filter"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, filterName:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "Unnamed filter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 84
    .local v7, version:I
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, vendor:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v0, "Unknown vendor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, title:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "Unknown title"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, packageName:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], effectName["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], filterName["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], version["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], vendor["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], title["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], packageName["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v13, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    add-int/lit16 v3, v12, 0x1f40

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v12, v12, 0x1

    .line 96
    goto/16 :goto_0

    .line 97
    .end local v2           #id:I
    .end local v4           #vendor:Ljava/lang/String;
    .end local v5           #effectName:Ljava/lang/String;
    .end local v6           #filterName:Ljava/lang/String;
    .end local v7           #version:I
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_1
    if-nez v12, :cond_4

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    if-eqz v10, :cond_2

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v12           #filterCount:I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0

    .line 100
    .restart local v12       #filterCount:I
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    const/4 v0, 0x1

    .line 106
    if-eqz v10, :cond_3

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 103
    .end local v12           #filterCount:I
    :catch_0
    move-exception v11

    .line 104
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz v10, :cond_2

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 106
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public registerObserver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    return-void
.end method

.method public unRegisterObserver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method
