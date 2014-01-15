.class public Lcom/android/settings_ex/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_DISABLE:I = 0x7

.field private static final DLG_DISABLE_NOTIFICATIONS:I = 0x8

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final DLG_SPECIAL_DISABLE:I = 0x9

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field public static final REQUEST_UNINSTALL:I = 0x1

.field private static final SIZE_INVALID:I = -0x1

.field private static final SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field private static final is3LMAllowed:Z = false

.field private static isDisableNotificationDialogVisible:Z = false

.field private static final isSupportInstallExternal:Z = true

.field private static final localLOGV:Z


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRes:Landroid/app/enterprise/RestrictionPolicy;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sprint.w.installer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sprint.zone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.coremobility.app.vnotes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.locationlabs.v3client"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sprint.dsa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.birdstep.android.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sprint.ce.updater"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.telespree.android.client"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.sprextension"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 203
    sput-boolean v3, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 129
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 176
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    .line 204
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 205
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 206
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    .line 207
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 208
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 209
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 210
    iput-wide v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 253
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1611
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1663
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/settings_ex/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private applyKioskModePolicy(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v1, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1806
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, kioskPackage:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1808
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1810
    :cond_1
    return-void
.end method

.method private checkContainerRestrictionOnButtons()V
    .locals 13

    .prologue
    .line 1190
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sec_container_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1191
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1193
    .local v9, standarizedPackageName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1194
    .local v6, isPresent:Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    .line 1196
    .local v4, ekm:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v4, v10}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v1

    .line 1197
    .local v1, containerMgr:Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    if-eqz v1, :cond_3

    .line 1198
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v2

    .line 1199
    .local v2, containerPkgs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1200
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v0, v5

    .line 1201
    .local v8, pkgName:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    .line 1202
    const/4 v6, 0x1

    .line 1215
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #containerMgr:Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    .end local v2           #containerPkgs:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 1216
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1219
    .end local v4           #ekm:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v6           #isPresent:Z
    .end local v9           #standarizedPackageName:Ljava/lang/String;
    :cond_1
    return-void

    .line 1200
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #containerMgr:Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    .restart local v2       #containerPkgs:[Ljava/lang/String;
    .restart local v4       #ekm:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v5       #i$:I
    .restart local v6       #isPresent:Z
    .restart local v7       #len$:I
    .restart local v8       #pkgName:Ljava/lang/String;
    .restart local v9       #standarizedPackageName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1208
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #containerPkgs:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v10, "InstalledAppDetails"

    const-string v11, "checkContainerRestrictionOnButtons: containerMgr is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1210
    .end local v1           #containerMgr:Lcom/sec/enterprise/knox/EnterpriseContainerManager;
    :catch_0
    move-exception v3

    .line 1211
    .local v3, e:Ljava/lang/SecurityException;
    const-string v10, "InstalledAppDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecurityException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1212
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 1213
    .local v3, e:Ljava/lang/IllegalStateException;
    const-string v10, "InstalledAppDetails"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalStateException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1628
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1644
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 1645
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 1634
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1636
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1638
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1639
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1640
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1641
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1602
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1603
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1604
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1605
    .local v1, newEnt:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1606
    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 1608
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 1609
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 326
    packed-switch p1, :pswitch_data_0

    .line 340
    const-string v0, ""

    :goto_0
    return-object v0

    .line 328
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906b2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906b4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1703
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1709
    :goto_0
    return v0

    .line 1706
    :catch_0
    move-exception v0

    .line 1709
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 301
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 8
    .parameter "button"

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 427
    .local v0, disableable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 429
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 433
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    :cond_1
    const v5, 0x7f090676

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 452
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 436
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_3

    .line 437
    const v5, 0x7f090676

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :cond_3
    const v5, 0x7f090677

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f090678

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f09068a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, emulated:Z
    if-eqz v1, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 352
    .local v0, dataOnly:Z
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_1

    move v0, v3

    .line 353
    :goto_1
    const/4 v2, 0x1

    .line 354
    .local v2, moveDisable:Z
    if-eqz v0, :cond_2

    .line 355
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0906ae

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 365
    :goto_2
    if-eqz v2, :cond_5

    .line 366
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v2           #moveDisable:Z
    :cond_1
    move v0, v4

    .line 352
    goto :goto_1

    .line 356
    .restart local v2       #moveDisable:Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 357
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0906af

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 359
    const/4 v2, 0x0

    goto :goto_2

    .line 361
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0906b0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 362
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;->init()V

    .line 363
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    :goto_3
    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    .line 368
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 579
    sget-boolean v2, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "InstalledAppDetails"

    const-string v3, " ,,,,,,,,,,,,,,,,LEAVING CHECKBOX AS SUCH & RETURNING, SINCE NOTIFICATION DIALOG IS VISIBLE ,,,,,,,,,,,,,,,,,"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_0
    return-void

    .line 585
    :cond_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 587
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 589
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 593
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isCustomerRequestPackage()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.fotaclient"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setEnabled(Z)V

    .line 610
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 590
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initUninstallButtons()V
    .locals 14

    .prologue
    const v13, 0x7f090673

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 456
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 457
    const/4 v4, 0x1

    .line 458
    .local v4, enabled:Z
    iget-boolean v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v10, :cond_7

    .line 459
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v13, 0x7f090679

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setText(I)V

    .line 460
    const/4 v9, 0x0

    .line 461
    .local v9, specialDisable:Z
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 462
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v9

    .line 463
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v9, :cond_6

    :goto_1
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 482
    const-string v10, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 483
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    .end local v9           #specialDisable:Z
    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 540
    const/4 v4, 0x0

    .line 543
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 544
    const/4 v4, 0x0

    .line 567
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    if-eqz v4, :cond_4

    .line 570
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_4
    return-void

    .end local v4           #enabled:Z
    :cond_5
    move v10, v11

    .line 456
    goto :goto_0

    .restart local v4       #enabled:Z
    .restart local v9       #specialDisable:Z
    :cond_6
    move v11, v12

    .line 465
    goto :goto_1

    .line 488
    .end local v9           #specialDisable:Z
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a

    .line 490
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 504
    :goto_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, sales_code:Ljava/lang/String;
    const-string v10, "SPR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "BST"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "VMU"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 507
    :cond_8
    sget-object v3, Lcom/android/settings_ex/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_9

    aget-object v7, v3, v5

    .line 508
    .local v7, pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 509
    const/4 v4, 0x0

    .line 526
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 527
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, BlockPackageString:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, BlockPackageList:[Ljava/lang/String;
    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v6, v3

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 530
    .local v2, app:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 531
    const/4 v4, 0x0

    .line 532
    goto/16 :goto_2

    .line 491
    .end local v0           #BlockPackageList:[Ljava/lang/String;
    .end local v1           #BlockPackageString:Ljava/lang/String;
    .end local v2           #app:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #sales_code:Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x80

    and-int/2addr v10, v11

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_b

    .line 496
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setText(I)V

    .line 497
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 499
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_3

    .line 507
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #pkgName:Ljava/lang/String;
    .restart local v8       #sales_code:Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 529
    .end local v7           #pkgName:Ljava/lang/String;
    .restart local v0       #BlockPackageList:[Ljava/lang/String;
    .restart local v1       #BlockPackageString:Ljava/lang/String;
    .restart local v2       #app:Ljava/lang/String;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1356
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1358
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1359
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1361
    new-instance v3, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1365
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1366
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 1368
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1373
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f090696

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isCustomerRequestPackage()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 384
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, sales_code:Ljava/lang/String;
    const/4 v3, 0x0

    .line 388
    .local v3, packageList:[Ljava/lang/String;
    const-string v8, "DCM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 389
    const/16 v8, 0x11

    new-array v3, v8, [Ljava/lang/String;

    .end local v3           #packageList:[Ljava/lang/String;
    const-string v8, "com.mcafee.vsm_android_dcm"

    aput-object v8, v3, v7

    const-string v8, "com.android.contacts"

    aput-object v8, v3, v6

    const/4 v8, 0x2

    const-string v9, "com.android.jcontacts"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "com.nttdocomo.android.socialphonebook"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "jp.co.nttdocomo.carriermail"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "com.nttdocomo.android.anmane"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "com.nttdocomo.android.remotelock"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "com.nttdocomo.android.areamail"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "com.nttdocomo.android.applicationmanager"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "com.rsupport.rs.activity.ntt"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "jp.co.nttdocomo.lcsapp"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "jp.co.nttdocomo.lcsappsub"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "jp.co.nttdocomo.Koe_no_Takuhaibin"

    aput-object v9, v3, v8

    const/16 v8, 0xd

    const-string v9, "jp.co.nttdocomo.docomo_WiFi.preinstall"

    aput-object v9, v3, v8

    const/16 v8, 0xe

    const-string v9, "com.nttdocomo.communicase.carriermail"

    aput-object v9, v3, v8

    const/16 v8, 0xf

    const-string v9, "com.nttdocomo.android.gs.utility"

    aput-object v9, v3, v8

    const/16 v8, 0x10

    const-string v9, "com.android.phone"

    aput-object v9, v3, v8

    .line 410
    .restart local v3       #packageList:[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 411
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 412
    .local v4, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 418
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkgName:Ljava/lang/String;
    :goto_1
    return v6

    .line 411
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 418
    goto :goto_1
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 376
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 379
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 1310
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1311
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1312
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f090678

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1313
    if-ne v1, v4, :cond_0

    .line 1314
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1319
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 1320
    return-void

    .line 1317
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1337
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1338
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1340
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1341
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1342
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1348
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    .line 1349
    return-void

    .line 1346
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1323
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1324
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1325
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initDataButtons()V

    .line 1326
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initMoveButton()V

    .line 1327
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1334
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0906b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1332
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1231
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1233
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1234
    iget-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1235
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1241
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1302
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 1303
    return-void

    .line 1244
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1245
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1246
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1251
    .local v4, dataSize:J
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1252
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1253
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_3
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1256
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1257
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    :cond_4
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 1261
    iput-wide v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1262
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    :cond_5
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 1265
    iput-wide v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1266
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1269
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 1270
    iput-wide v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1271
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_7
    iget-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 1274
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1275
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_a

    .line 1279
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1295
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_d

    .line 1296
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1283
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 1284
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_b

    .line 1285
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1293
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1287
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 1290
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 1298
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1299
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 47

    .prologue
    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v42, v0

    if-eqz v42, :cond_0

    .line 861
    const/16 v42, 0x1

    .line 1089
    :goto_0
    return v42

    .line 863
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v25

    .line 865
    .local v25, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v42, v0

    if-nez v42, :cond_1

    .line 866
    const/16 v42, 0x0

    goto :goto_0

    .line 869
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    if-nez v42, :cond_2

    .line 870
    const/16 v42, 0x0

    goto :goto_0

    .line 874
    :cond_2
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v30, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v24, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 880
    const/16 v22, 0x0

    .line 882
    .local v22, hasUsbDefaults:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v42, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v43

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 886
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v21

    .line 889
    .local v21, hasBindAppWidgetPermission:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v42, v0

    const v43, 0x7f0b01ad

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 890
    .local v14, autoLaunchTitleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v42, v0

    const v43, 0x7f0b01ae

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 891
    .local v15, autoLaunchView:Landroid/widget/TextView;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v42

    if-gtz v42, :cond_3

    if-eqz v22, :cond_5

    :cond_3
    const/4 v13, 0x1

    .line 892
    .local v13, autoLaunchEnabled:Z
    :goto_2
    if-nez v13, :cond_6

    if-nez v21, :cond_6

    .line 893
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 932
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    const-string v43, "activity"

    invoke-virtual/range {v42 .. v43}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 934
    .local v9, am:Landroid/app/ActivityManager;
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v17

    .line 945
    .local v17, compatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v42, v0

    const/16 v43, 0x8

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->setVisibility(I)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v42, v0

    const v43, 0x7f0b01b5

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 950
    .local v27, permsView:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 951
    .local v11, asp:Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v31

    .line 955
    .local v31, premiumSmsPermission:I
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v42

    if-gtz v42, :cond_4

    if-eqz v31, :cond_f

    .line 957
    :cond_4
    const/16 v42, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    :goto_4
    const v42, 0x7f0b01b6

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 964
    .local v34, securityBillingDesc:Landroid/widget/TextView;
    const v42, 0x7f0b01b7

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 966
    .local v35, securityBillingList:Landroid/widget/LinearLayout;
    if-eqz v31, :cond_10

    .line 968
    const/16 v42, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    const/16 v42, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 970
    const v42, 0x7f0b01b8

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/Spinner;

    .line 972
    .local v39, spinner:Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    const v43, 0x7f0a0062

    const v44, 0x1090008

    invoke-static/range {v42 .. v44}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 975
    .local v6, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v42, 0x1090009

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 976
    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 978
    add-int/lit8 v42, v31, -0x1

    move-object/from16 v0, v39

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 979
    new-instance v42, Lcom/android/settings_ex/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 987
    .end local v6           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v39           #spinner:Landroid/widget/Spinner;
    :goto_5
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v42

    if-lez v42, :cond_13

    .line 989
    const v42, 0x7f0b01ba

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 991
    .local v36, securityList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 992
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v26

    .line 996
    .local v26, packages:[Ljava/lang/String;
    if-eqz v26, :cond_13

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_13

    .line 997
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v29, pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v23, 0x0

    .local v23, i:I
    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v23

    move/from16 v1, v42

    if-ge v0, v1, :cond_12

    .line 999
    aget-object v28, v26, v23

    .line 1000
    .local v28, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 998
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 883
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v11           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v13           #autoLaunchEnabled:Z
    .end local v14           #autoLaunchTitleView:Landroid/widget/TextView;
    .end local v15           #autoLaunchView:Landroid/widget/TextView;
    .end local v17           #compatMode:I
    .end local v21           #hasBindAppWidgetPermission:Z
    .end local v23           #i:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v27           #permsView:Landroid/widget/LinearLayout;
    .end local v28           #pkg:Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v31           #premiumSmsPermission:I
    .end local v34           #securityBillingDesc:Landroid/widget/TextView;
    .end local v35           #securityBillingList:Landroid/widget/LinearLayout;
    .end local v36           #securityList:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v20

    .line 884
    .local v20, e:Landroid/os/RemoteException;
    const-string v42, "InstalledAppDetails"

    const-string v43, "mUsbManager.hasDefaults"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 891
    .end local v20           #e:Landroid/os/RemoteException;
    .restart local v14       #autoLaunchTitleView:Landroid/widget/TextView;
    .restart local v15       #autoLaunchView:Landroid/widget/TextView;
    .restart local v21       #hasBindAppWidgetPermission:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 895
    .restart local v13       #autoLaunchEnabled:Z
    :cond_6
    if-eqz v21, :cond_b

    if-eqz v13, :cond_b

    const/16 v41, 0x1

    .line 897
    .local v41, useBullets:Z
    :goto_8
    if-eqz v21, :cond_c

    .line 898
    const v42, 0x7f090664

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 903
    :goto_9
    const/16 v40, 0x0

    .line 904
    .local v40, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x7f0f0011

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 906
    .local v16, bulletIndent:I
    if-eqz v13, :cond_8

    .line 907
    const v42, 0x7f09067a

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 908
    .local v12, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v33, Landroid/text/SpannableString;

    move-object/from16 v0, v33

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 909
    .local v33, s:Landroid/text/SpannableString;
    if-eqz v41, :cond_7

    .line 910
    new-instance v42, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v43, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 912
    :cond_7
    if-nez v40, :cond_d

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v33, v42, v43

    const/16 v43, 0x1

    const-string v44, "\n"

    aput-object v44, v42, v43

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v40

    .line 915
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v33           #s:Landroid/text/SpannableString;
    :cond_8
    :goto_a
    if-eqz v21, :cond_a

    .line 916
    const v42, 0x7f09067b

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 918
    .local v8, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v33, Landroid/text/SpannableString;

    move-object/from16 v0, v33

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 919
    .restart local v33       #s:Landroid/text/SpannableString;
    if-eqz v41, :cond_9

    .line 920
    new-instance v42, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v43, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 923
    :cond_9
    if-nez v40, :cond_e

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v33, v42, v43

    const/16 v43, 0x1

    const-string v44, "\n"

    aput-object v44, v42, v43

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v40

    .line 926
    .end local v8           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v33           #s:Landroid/text/SpannableString;
    :cond_a
    :goto_b
    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/widget/Button;->setEnabled(Z)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 895
    .end local v16           #bulletIndent:I
    .end local v40           #text:Ljava/lang/CharSequence;
    .end local v41           #useBullets:Z
    :cond_b
    const/16 v41, 0x0

    goto/16 :goto_8

    .line 900
    .restart local v41       #useBullets:Z
    :cond_c
    const v42, 0x7f090663

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 912
    .restart local v12       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v16       #bulletIndent:I
    .restart local v33       #s:Landroid/text/SpannableString;
    .restart local v40       #text:Ljava/lang/CharSequence;
    :cond_d
    const/16 v42, 0x4

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v40, v42, v43

    const/16 v43, 0x1

    const-string v44, "\n"

    aput-object v44, v42, v43

    const/16 v43, 0x2

    aput-object v33, v42, v43

    const/16 v43, 0x3

    const-string v44, "\n"

    aput-object v44, v42, v43

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v40

    goto/16 :goto_a

    .line 923
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v8       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_e
    const/16 v42, 0x4

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v40, v42, v43

    const/16 v43, 0x1

    const-string v44, "\n"

    aput-object v44, v42, v43

    const/16 v43, 0x2

    aput-object v33, v42, v43

    const/16 v43, 0x3

    const-string v44, "\n"

    aput-object v44, v42, v43

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v40

    goto :goto_b

    .line 959
    .end local v8           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v16           #bulletIndent:I
    .end local v33           #s:Landroid/text/SpannableString;
    .end local v40           #text:Ljava/lang/CharSequence;
    .end local v41           #useBullets:Z
    .restart local v9       #am:Landroid/app/ActivityManager;
    .restart local v11       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v17       #compatMode:I
    .restart local v27       #permsView:Landroid/widget/LinearLayout;
    .restart local v31       #premiumSmsPermission:I
    :cond_f
    const/16 v42, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 983
    .restart local v34       #securityBillingDesc:Landroid/widget/TextView;
    .restart local v35       #securityBillingList:Landroid/widget/LinearLayout;
    :cond_10
    const/16 v42, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    const/16 v42, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 1004
    .restart local v23       #i:I
    .restart local v26       #packages:[Ljava/lang/String;
    .restart local v28       #pkg:Ljava/lang/String;
    .restart local v29       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v36       #securityList:Landroid/widget/LinearLayout;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1005
    .local v7, ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 1006
    .end local v7           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v42

    goto/16 :goto_7

    .line 1009
    .end local v28           #pkg:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1010
    .local v5, N:I
    if-lez v5, :cond_13

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 1013
    .local v32, res:Landroid/content/res/Resources;
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v5, v0, :cond_15

    .line 1014
    const/16 v42, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/CharSequence;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1027
    .local v10, appListStr:Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v42, v0

    const v43, 0x7f0b01b9

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1029
    .local v19, descr:Landroid/widget/TextView;
    const v42, 0x7f0906a3

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    aput-object v10, v43, v44

    move-object/from16 v0, v32

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    .end local v5           #N:I
    .end local v10           #appListStr:Ljava/lang/String;
    .end local v19           #descr:Landroid/widget/TextView;
    .end local v23           #i:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v32           #res:Landroid/content/res/Resources;
    .end local v36           #securityList:Landroid/widget/LinearLayout;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1037
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshButtons()V

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v18

    .line 1045
    .local v18, cp:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v42, v0

    const v43, 0x7f0b01b3

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout;

    .line 1047
    .local v38, signatureView:Landroid/widget/LinearLayout;
    if-eqz v18, :cond_1a

    const/16 v42, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v42

    if-eqz v42, :cond_1a

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    if-eqz v42, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    if-lez v42, :cond_19

    .line 1049
    const/16 v42, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1050
    const v42, 0x7f0b01b4

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    .line 1052
    .local v37, signatureList:Landroid/widget/LinearLayout;
    const/16 v42, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1053
    invoke-virtual/range {v37 .. v37}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setSignatureListView(Landroid/widget/LinearLayout;)V

    .line 1063
    .end local v37           #signatureList:Landroid/widget/LinearLayout;
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v42, v0

    if-nez v42, :cond_1c

    .line 1065
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v42, v0

    const/high16 v43, 0x80

    and-int v42, v42, v43

    if-nez v42, :cond_1b

    const/16 v42, 0x1

    :goto_e
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1086
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->applyKioskModePolicy(Ljava/lang/String;)V

    .line 1089
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v18           #cp:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .end local v38           #signatureView:Landroid/widget/LinearLayout;
    .restart local v5       #N:I
    .restart local v23       #i:I
    .restart local v26       #packages:[Ljava/lang/String;
    .restart local v29       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v32       #res:Landroid/content/res/Resources;
    .restart local v36       #securityList:Landroid/widget/LinearLayout;
    :cond_15
    const/16 v42, 0x2

    move/from16 v0, v42

    if-ne v5, v0, :cond_16

    .line 1016
    const v42, 0x7f0906a4

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const/16 v45, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v32

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #appListStr:Ljava/lang/String;
    goto/16 :goto_c

    .line 1019
    .end local v10           #appListStr:Ljava/lang/String;
    :cond_16
    add-int/lit8 v42, v5, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/CharSequence;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1020
    .restart local v10       #appListStr:Ljava/lang/String;
    add-int/lit8 v23, v5, -0x3

    :goto_f
    if-ltz v23, :cond_18

    .line 1021
    if-nez v23, :cond_17

    const v42, 0x7f0906a6

    :goto_10
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    aput-object v10, v43, v44

    move-object/from16 v0, v32

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1020
    add-int/lit8 v23, v23, -0x1

    goto :goto_f

    .line 1021
    :cond_17
    const v42, 0x7f0906a7

    goto :goto_10

    .line 1024
    :cond_18
    const v42, 0x7f0906a5

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v10, v43, v44

    const/16 v44, 0x1

    add-int/lit8 v45, v5, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v32

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c

    .line 1056
    .end local v5           #N:I
    .end local v10           #appListStr:Ljava/lang/String;
    .end local v23           #i:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v32           #res:Landroid/content/res/Resources;
    .end local v36           #securityList:Landroid/widget/LinearLayout;
    .restart local v18       #cp:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .restart local v38       #signatureView:Landroid/widget/LinearLayout;
    :cond_19
    const/16 v42, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 1059
    :cond_1a
    const/16 v42, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 1066
    :cond_1b
    const/16 v42, 0x0

    goto/16 :goto_e

    .line 1071
    :cond_1c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2200

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1074
    .restart local v7       #ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v42, v0

    if-nez v42, :cond_14

    .line 1078
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v42, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v43, 0x80

    and-int v42, v42, v43

    if-eqz v42, :cond_1d

    const/16 v42, 0x1

    goto/16 :goto_0

    :cond_1d
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 1080
    .end local v7           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v20

    .line 1081
    .local v20, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v42, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    .line 1129
    const v0, 0x7f090663

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1130
    const v0, 0x7f09067c

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1133
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 832
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 834
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 836
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 840
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 841
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 844
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_2
    return-object v3

    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 832
    goto :goto_0

    .line 834
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 852
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 763
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0b0197

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 766
    const v3, 0x7f0b00d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 767
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V

    .line 768
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    const v3, 0x7f0b01e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 771
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const v3, 0x7f0b01f6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 775
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0906ad

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1225
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 1227
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1228
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1684
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1691
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1694
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v0

    .line 1695
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v1

    .line 1697
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setSignatureListView(Landroid/widget/LinearLayout;)V
    .locals 16
    .parameter "signatureList"

    .prologue
    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v1

    .line 1137
    .local v1, cp:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    const/4 v4, 0x0

    .line 1138
    .local v4, identities:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1, v14}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    .line 1141
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1144
    .local v8, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1145
    .local v5, identity:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1148
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v14, 0x109002d

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1150
    .local v10, permsView:Landroid/widget/LinearLayout;
    const v14, 0x10202ad

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1152
    .local v9, permsList:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10803ec

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1154
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const v14, 0x109002a

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 1156
    .local v12, signView:Landroid/widget/AppSecurityPermissions$PermissionItemView;
    const v14, 0x10202a2

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1158
    .local v11, primaryView:Landroid/widget/TextView;
    const v14, 0x10202a1

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1160
    .local v6, imgView:Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v5, v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v13, text:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v5, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 1163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1165
    :cond_1
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 1167
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1168
    invoke-virtual {v9, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1171
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #identity:[Ljava/lang/String;
    .end local v6           #imgView:Landroid/widget/ImageView;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #permsList:Landroid/widget/LinearLayout;
    .end local v10           #permsView:Landroid/widget/LinearLayout;
    .end local v11           #primaryView:Landroid/widget/TextView;
    .end local v12           #signView:Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .end local v13           #text:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 1376
    invoke-static {p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1377
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "packageName"
    .parameter "allUsers"
    .parameter "andDisable"

    .prologue
    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1593
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1594
    .local v1, uninstallIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1595
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1596
    iput-boolean p3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1597
    return-void
.end method

.method private updateButtonsForOperator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1650
    const-string v1, "com.wssyncmldm"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.fotaclient"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1652
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, sales_code:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1654
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1655
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1659
    .end local v0           #sales_code:Ljava/lang/String;
    :cond_2
    const-string v1, "com.android.settings_ex"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1660
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1661
    :cond_3
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1620
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1621
    return-void
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .locals 5

    .prologue
    .line 1175
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isStopSystemAppAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1178
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1181
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 739
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 740
    if-ne p1, v5, :cond_1

    .line 741
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 742
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 747
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 748
    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    invoke-direct {p0, v5, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 759
    :cond_1
    return-void

    .line 752
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1784
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1785
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1787
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAskCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v4, :cond_1

    .line 1788
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEnableCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v4, :cond_3

    .line 1790
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1792
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    if-ne p1, v4, :cond_0

    .line 1793
    if-nez p2, :cond_4

    .line 1794
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1796
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1717
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1718
    .local v5, packageName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 1719
    iget-boolean v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    .line 1720
    invoke-direct {p0, v4, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1723
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    .line 1724
    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1726
    :cond_2
    new-instance v7, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1730
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 1731
    invoke-direct {p0, v5, v6, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1733
    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1736
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 1737
    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1738
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 1739
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1741
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1746
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0b01ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1748
    .local v0, autoLaunchTitleView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0b01ae

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1749
    .local v1, autoLaunchView:Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1742
    .end local v0           #autoLaunchTitleView:Landroid/widget/TextView;
    .end local v1           #autoLaunchView:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 1743
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1750
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 1751
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1752
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1753
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1759
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1761
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    .line 1763
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    .line 1764
    new-instance v6, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1766
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1767
    :cond_b
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 1768
    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1770
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_0

    .line 1771
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    .line 1772
    new-instance v7, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1774
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    .line 1776
    .local v4, moveFlags:I
    :cond_e
    iput-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1777
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshButtons()V

    .line 1778
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 618
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 621
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/ApplicationsState;->newSession(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ex/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 623
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 624
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 625
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 627
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 628
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 630
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    .line 637
    :cond_0
    new-instance v1, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings_ex/applications/CanBeOnSdCardChecker;

    .line 640
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->resume()V

    .line 642
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 644
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 645
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 704
    const v0, 0x7f090674

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 706
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0b0272

    const v6, 0x7f0b0271

    const/4 v5, 0x0

    .line 650
    const v3, 0x7f040098

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 651
    .local v2, view:Landroid/view/View;
    invoke-static {p2, v2, v2, v5}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 653
    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 654
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0906aa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 657
    const v3, 0x7f0b019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 658
    const v3, 0x7f0b019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 659
    const v3, 0x7f0b01a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 660
    const v3, 0x7f0b01a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 661
    const v3, 0x7f0b01a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 669
    const v3, 0x7f0b0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 671
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f09066d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 672
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 673
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 676
    const v3, 0x7f0b0199

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 677
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 679
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 682
    const v3, 0x7f0b01a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 683
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 684
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 687
    const v3, 0x7f0b01ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 688
    const v3, 0x7f0b01ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 690
    const v3, 0x7f0b01af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 693
    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 694
    const v3, 0x7f0b01b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAskCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 695
    const v3, 0x7f0b01b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mEnableCompatibilityCB:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 697
    const v3, 0x7f0b019a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    iput-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    .line 699
    return-object v2
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 1387
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1388
    .local v2, id:I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;

    .line 1389
    .local v0, dialog:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1390
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;->dismiss()V

    .line 1391
    :cond_0
    const/4 v0, 0x0

    .line 1392
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    .line 1393
    const-string v3, "InstalledAppDetails"

    const-string v4, "Destroy"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .end local v0           #dialog:Lcom/android/settings_ex/applications/InstalledAppDetails$MyAlertDialogFragment;
    .end local v2           #id:I
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1398
    return-void

    .line 1394
    :catch_0
    move-exception v1

    .line 1395
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "Nullpointer exception in DestroyView"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 729
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 730
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 734
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 806
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    .line 811
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 819
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 824
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 797
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->pause()V

    .line 798
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 710
    const/4 v0, 0x1

    .line 711
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 712
    const/4 v0, 0x0

    .line 724
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 725
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 714
    const/4 v0, 0x0

    goto :goto_0

    .line 715
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 716
    const/4 v0, 0x0

    goto :goto_0

    .line 717
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 718
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 719
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 720
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 722
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 786
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 788
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSession:Lcom/android/settings_ex/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$Session;->resume()V

    .line 789
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    invoke-direct {p0, v1, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 792
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 828
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1402
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1403
    return-void
.end method
