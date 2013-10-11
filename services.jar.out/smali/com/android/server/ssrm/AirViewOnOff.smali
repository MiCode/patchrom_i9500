.class public final Lcom/android/server/ssrm/AirViewOnOff;
.super Ljava/lang/Object;
.source "AirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;,
        Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;
    }
.end annotation


# static fields
.field private static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field private static final AIR_VIEW_TAG_NAME:Ljava/lang/String; = "com.sec.android.airview.HOVER"

.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static FPS_SYSFS_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TSP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_RESULT_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field private static mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

.field private static mAirViewOnPackagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBrowserMainPageVisible:Z

.field private static mClearCoverOn:Z

.field private static mContext:Landroid/content/Context;

.field private static mForceUpdateSysfs:Z

.field private static mForegroundPackageName:Ljava/lang/String;

.field private static mFpsSysfsTableInit:Z

.field private static mInstance:Lcom/android/server/ssrm/AirViewOnOff;

.field private static mIsAirViewAppOnFg:Z

.field private static mLastAirViewStatus:Z

.field private static mLastFps:I

.field private static mLastHoverSysfsValue:Z

.field private static mLockScreenVisible:Z

.field private static mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

.field private static mMultiWindowOn:Z

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mSIPVisible:Z

.field private static mSettingFingerOverViewOn:Z

.field private static mSettingMagnifierOn:Z

.field private static mStatusBarOn:Z

.field private static mTspPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 70
    const-string v2, "AirViewOnOff"

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    .line 72
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->DEBUG:Z

    .line 74
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    .line 82
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    .line 141
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    .line 142
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    .line 144
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    .line 145
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    .line 158
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    .line 172
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    .line 173
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    .line 174
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    .line 175
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    .line 181
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    .line 182
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    .line 183
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    .line 184
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    .line 185
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    .line 186
    sput v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    .line 243
    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    .line 464
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastHoverSysfsValue:Z

    .line 480
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    .line 482
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    .line 486
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    .line 489
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    .line 491
    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static:: mTspPathExist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Email"

    const-string v2, "com.android.email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Messaging"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music"

    const-string v2, "com.samsung.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Player"

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "My files"

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "New Internet"

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S Memo"

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S-Planner"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Story ablum"

    const-string v2, "com.samsung.android.app.episodes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video (hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Allshare play"

    const-string v2, "com.sec.pcw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON"

    const-string v2, "com.sec.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON V"

    const-string v2, "com.coolots.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Clock Package"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Group play"

    const-string v2, "com.samsung.groupcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kids mode"

    const-string v2, "com.samsung.kidsmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kies cast"

    const-string v2, "com.sec.android.app.podcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Prism store"

    const-string v2, "com.sec.everglades"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S health"

    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video editor"

    const-string v2, "com.sec.android.app.ve"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice"

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice recorder"

    const-string v2, "com.sec.android.app.voicerecorder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "color blind"

    const-string v2, "com.samsung.android.app.colorblind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Remote view finder"

    const-string v2, "com.sec.android.app.remoteviewfinder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "SamsungApps"

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "sbrowsertry"

    const-string v2, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Live Share"

    const-string v2, "com.sec.android.app.mediasync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Books"

    const-string v2, "com.sec.readershub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Learning"

    const-string v2, "com.sec.msc.learninghub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music 3.1"

    const-string v2, "com.samsung.musichub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Games"

    const-string v2, "com.sec.android.app.gamehub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v1, "updating lookup hash"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "60hz, div=3"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "40hz, div=5"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "48hz, div=8"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirViewOnOff:: mFpsSysfsTableInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 128
    :cond_0
    :try_start_1
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "60"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "42"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "51"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirViewOnOff:: mFpsSysfsTableInit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    return p0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    return p0
.end method

.method private static calculateAirViewStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    sget-object v2, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAirViewStatus:: mSettingFingerOverViewOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLockScreenVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMultiWindowOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsAirViewAppOnFg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSIPVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    if-eqz v2, :cond_0

    .line 215
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    if-nez v2, :cond_0

    .line 223
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    if-nez v2, :cond_0

    .line 227
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    if-eqz v2, :cond_0

    .line 231
    :cond_3
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v2, :cond_0

    .line 233
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public static checkFPS(Ljava/lang/String;I)Z
    .locals 5
    .parameter "temp"
    .parameter "fps"

    .prologue
    const/4 v2, 0x0

    .line 590
    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v3, "FPS found in look up"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 593
    .local v0, sysfsfps:I
    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS found in look up sysfps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    if-ne p1, v0, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 600
    .end local v0           #sysfsfps:I
    :goto_0
    return v1

    .restart local v0       #sysfsfps:I
    :cond_0
    move v1, v2

    .line 597
    goto :goto_0

    .end local v0           #sysfsfps:I
    :cond_1
    move v1, v2

    .line 600
    goto :goto_0
.end method

.method private static declared-synchronized enableHoverView(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 466
    const-class v1, Lcom/android/server/ssrm/AirViewOnOff;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mLastHoverSysfsValue:Z

    .line 467
    if-eqz p0, :cond_0

    .line 468
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newAirViewOn:: now air view is enabled. fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "hover_enable,1"

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :goto_0
    monitor-exit v1

    return-void

    .line 472
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newAirViewOn:: now air view is disabled. fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "hover_enable,0"

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/android/server/ssrm/AirViewOnOff;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/ssrm/AirViewOnOff;

    invoke-direct {v0}, Lcom/android/server/ssrm/AirViewOnOff;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    return-object v0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 514
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 519
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    return-void
.end method

.method public static onFrameRateUpdate(ILjava/lang/String;)V
    .locals 2
    .parameter "fps"
    .parameter "filePath"

    .prologue
    .line 606
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/AirViewOnOff$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/ssrm/AirViewOnOff$2;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method public static readFPSFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 572
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v4, v7

    .line 574
    .local v4, size:I
    new-array v1, v4, [B

    .line 576
    .local v1, bytes:[B
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 577
    .local v0, buf:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    array-length v7, v1

    invoke-virtual {v0, v1, v5, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 578
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 579
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    .end local v0           #buf:Ljava/io/BufferedInputStream;
    :goto_0
    return-object v5

    .line 580
    :catch_0
    move-exception v2

    .line 581
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFPSFile:: exception msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 582
    goto :goto_0

    .line 583
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 584
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFPSFile:: exception msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 585
    goto :goto_0
.end method

.method public static readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, strTemp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 642
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 644
    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 649
    if-eqz v1, :cond_0

    .line 650
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 656
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    if-eqz v0, :cond_1

    .line 650
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 652
    :catch_1
    move-exception v2

    .line 653
    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 648
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 649
    :goto_3
    if-eqz v0, :cond_2

    .line 650
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 648
    :cond_2
    :goto_4
    throw v4

    .line 652
    :catch_2
    move-exception v2

    .line 653
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLineFromSysfs:: e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 652
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 653
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 648
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 645
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static setBrowserMainPageVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserMainPageVisible:: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    if-eq v0, p0, :cond_0

    .line 163
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    .line 164
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    .line 166
    :cond_0
    return-void
.end method

.method private static setLockScreenVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 147
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockScreenVisible:: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    if-ne v0, p0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    .line 155
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_0
.end method

.method private static updateAirViewStatus()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->calculateAirViewStatus()Z

    move-result v0

    .line 193
    .local v0, newAirViewStatus:Z
    sget-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    if-ne v1, v0, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->enableHoverView(Z)V

    .line 195
    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    .line 196
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    .line 198
    :cond_1
    return-void
.end method

.method private static updateAirViewStatus(I)V
    .locals 0
    .parameter "fps"

    .prologue
    .line 188
    sput p0, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    .line 189
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    .line 190
    return-void
.end method

.method protected static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "path"

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 499
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 503
    if-eqz v2, :cond_0

    .line 505
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 511
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    if-eqz v1, :cond_1

    .line 505
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 506
    :catch_1
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 503
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 505
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 503
    :cond_2
    :goto_4
    throw v3

    .line 506
    :catch_2
    move-exception v0

    .line 507
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 506
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 507
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 503
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 500
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 245
    sput-object p1, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, action:Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    if-nez v21, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v21, "com.android.systemui.statusbar.EXPANDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 254
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    .line 255
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    .line 258
    :cond_2
    const-string v21, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 259
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    .line 260
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    .line 263
    :cond_3
    const-string v21, "com.samsung.cover.OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 264
    const-string v21, "coverOpen"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 265
    .local v9, isCoverOpen:Z
    if-eqz v9, :cond_4

    .line 266
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    .line 270
    :goto_1
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    .line 268
    :cond_4
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    goto :goto_1

    .line 273
    .end local v9           #isCoverOpen:Z
    :cond_5
    const-string v21, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 274
    const-string v21, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    .line 275
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    .line 278
    :cond_6
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 279
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    .line 280
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    if-eqz v21, :cond_a

    .line 282
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 283
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    .line 287
    :goto_2
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive:: mSettingFingerOverViewOn = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v21, Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;-><init>(Lcom/android/server/ssrm/AirViewOnOff;)V

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    .line 290
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view_magnifier"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 295
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    .line 299
    :goto_3
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive:: mSettingMagnifierOn = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v21, Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;-><init>(Lcom/android/server/ssrm/AirViewOnOff;)V

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    .line 302
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view_magnifier"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    const-string v21, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 306
    .local v11, keyGuardManager:Landroid/app/KeyguardManager;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 307
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    .line 313
    .end local v11           #keyGuardManager:Landroid/app/KeyguardManager;
    :cond_7
    :goto_4
    const-string v21, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 316
    .local v4, activityManager:Landroid/app/ActivityManager;
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/android/server/ssrm/AirViewOnOff$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/server/ssrm/AirViewOnOff$1;-><init>(Lcom/android/server/ssrm/AirViewOnOff;Landroid/app/ActivityManager;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 285
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    :cond_8
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    goto/16 :goto_2

    .line 297
    :cond_9
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    goto :goto_3

    .line 310
    :cond_a
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: failed to register content observer."

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 355
    :cond_b
    const-string v21, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, intentData:Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 358
    .local v16, refinedPkg:[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v5, v16, v21

    .line 360
    .local v5, addedPackage:Ljava/lang/String;
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_PACKAGE_ADDED :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v5, :cond_0

    .line 363
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Tag Scan Start (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 365
    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.sec.android.airview.HOVER"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v12, mIntent:Landroid/content/Intent;
    const/16 v21, 0x200

    move/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 367
    .local v18, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added ris count : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 369
    .local v17, resolveInfo:Landroid/content/pm/ResolveInfo;
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added package intent for :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added HashMap size Before Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 372
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_c
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added HashMap size after Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 376
    .end local v17           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_d
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Tag Scan End (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Provider Scan Start (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v21, ""

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_f

    .line 380
    new-instance v12, Landroid/content/Intent;

    .end local v12           #mIntent:Landroid/content/Intent;
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v12       #mIntent:Landroid/content/Intent;
    const/16 v21, 0x200

    move/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 382
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 383
    .restart local v17       #resolveInfo:Landroid/content/pm/ResolveInfo;
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider package intent for :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider HashMap size Before Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 386
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_e
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider HashMap size after Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 391
    .end local v17           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_f
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Provider Scan End (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v5           #addedPackage:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #intentData:Ljava/lang/String;
    .end local v12           #mIntent:Landroid/content/Intent;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #refinedPkg:[Ljava/lang/String;
    .end local v18           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 412
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: Intent.ACTION_SCREEN_ON"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v21, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 414
    .restart local v11       #keyGuardManager:Landroid/app/KeyguardManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 415
    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    if-eqz v21, :cond_11

    .line 416
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    .line 418
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    .line 419
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    .line 421
    :cond_11
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    goto/16 :goto_0

    .line 426
    .end local v11           #keyGuardManager:Landroid/app/KeyguardManager;
    :cond_12
    const-string v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 427
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    goto/16 :goto_0

    .line 431
    :cond_13
    const-string v21, "ResponseAxT9Info"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 432
    const-string v21, "AxT9IME.isVisibleWindow"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    goto/16 :goto_0

    .line 435
    :cond_14
    const-string v21, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 436
    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, packageName:Ljava/lang/String;
    const-string v21, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 438
    .local v15, processState:Ljava/lang/String;
    const-string v21, "FOREGROUND"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 439
    .local v10, isForegroundState:Z
    if-eqz v10, :cond_0

    .line 442
    sput-object v13, Lcom/android/server/ssrm/AirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    .line 444
    const/4 v8, 0x0

    .line 445
    .local v8, isAirViewOnApp:Z
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 446
    const/4 v8, 0x1

    .line 449
    :cond_15
    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    move/from16 v0, v21

    if-eq v8, v0, :cond_0

    .line 450
    sput-boolean v8, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    .line 451
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    .line 454
    .end local v8           #isAirViewOnApp:Z
    .end local v10           #isForegroundState:Z
    .end local v13           #packageName:Ljava/lang/String;
    .end local v15           #processState:Ljava/lang/String;
    :cond_16
    const-string v21, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 455
    const-string v21, "SSRM_STATUS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 456
    .local v19, statusName:Ljava/lang/String;
    const-string v21, "SSRM_STATUS_VALUE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 458
    .local v20, statusValue:Z
    const-string v21, "Browser_showMain"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 459
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/AirViewOnOff;->setBrowserMainPageVisible(Z)V

    goto/16 :goto_0
.end method
