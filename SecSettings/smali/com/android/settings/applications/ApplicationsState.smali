.class public Lcom/android/settings_ex/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$Session;,
        Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_LOCKING:Z = false

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter; = null

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_INVALID:I = -0x2

.field static final SIZE_UNKNOWN:I = -0x1

.field static final TAG:Ljava/lang/String; = "ApplicationsState"

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 163
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 178
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 189
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 211
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 226
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Lcom/android/settings_ex/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 255
    iput-wide v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    .line 400
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 402
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 405
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    .line 408
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const/16 v0, 0x2200

    iput v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    return-void

    .line 412
    :cond_0
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 432
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 391
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 395
    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 809
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 812
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 801
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 805
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 791
    if-eqz p1, :cond_0

    .line 792
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 794
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 66
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 719
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :try_start_1
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage acquired lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v1, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 726
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: not resumed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    monitor-exit v2

    .line 746
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 730
    const-string v1, "ApplicationsState"

    const-string v3, "Package already exists!"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: already exists"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    monitor-exit v2

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 744
    :catch_0
    move-exception v1

    goto :goto_0

    .line 734
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 735
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 737
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 740
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 742
    :cond_3
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 642
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 646
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    .line 651
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 653
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 596
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    .line 600
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    .line 601
    new-instance v3, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    .line 602
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 604
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 605
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    .line 606
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 609
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 612
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 613
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 620
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 621
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 624
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_7

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 626
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 627
    add-int/lit8 v1, v1, -0x1

    .line 620
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 615
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 616
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 630
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 631
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_5

    .line 632
    iput-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 635
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_8
    iput-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 636
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 676
    iget-object v0, p1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 679
    :cond_0
    monitor-enter p1

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 681
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 658
    const-string v3, "ApplicationsState"

    const-string v4, "getEntry about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 660
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 661
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 662
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 663
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 664
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 670
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...getEntry releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    monitor-exit v4

    return-object v0

    .line 662
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 776
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-nez v0, :cond_1

    .line 778
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating AppEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 780
    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_0
    :goto_0
    return-object v0

    .line 782
    :cond_1
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 783
    iput-object p1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    .end local v0           #i:I
    :goto_1
    return v0

    .line 709
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 714
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public newSession(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ex/applications/ApplicationsState$Session;
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 588
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState$Session;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)V

    .line 589
    .local v0, s:Lcom/android/settings_ex/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    monitor-exit v2

    .line 592
    return-object v0

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 321
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    .line 322
    monitor-exit v3

    .line 332
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;

    .line 327
    .local v1, s:Lcom/android/settings_ex/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settings_ex/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v1           #s:Lcom/android/settings_ex/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 749
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 750
    :try_start_0
    const-string v2, "ApplicationsState"

    const-string v4, "removePackage acquired lock"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .line 752
    .local v1, idx:I
    const-string v2, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-ltz v1, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 755
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    const-string v2, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 761
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 765
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_1
    const-string v2, "ApplicationsState"

    const-string v4, "removePackage releasing lock"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    monitor-exit v3

    .line 767
    return-void

    .line 766
    .end local v1           #idx:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 685
    const-string v1, "ApplicationsState"

    const-string v2, "requestSize about to acquire lock..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 688
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 689
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 691
    :cond_0
    const-string v1, "ApplicationsState"

    const-string v3, "...requestSize releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    monitor-exit v2

    .line 693
    return-void

    .line 692
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 696
    const-wide/16 v1, 0x0

    .line 697
    .local v1, sum:J
    const-string v3, "ApplicationsState"

    const-string v4, "sumCacheSizes about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 699
    :try_start_0
    const-string v3, "ApplicationsState"

    const-string v5, "-> sumCacheSizes now has lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 701
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 700
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 703
    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...sumCacheSizes releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    monitor-exit v4

    .line 705
    return-wide v1

    .line 704
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
