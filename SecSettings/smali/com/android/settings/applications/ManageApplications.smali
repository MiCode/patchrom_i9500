.class public Lcom/android/settings_ex/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings_ex/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z = false

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field private static final is3LMAllowed:Z = false

.field private static final isSupportInstallExternal:Z = true


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 181
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 1294
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$2;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1047
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1051
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090661

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1053
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1140
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090687

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1141
    const v1, 0x7f090688

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1142
    const v1, 0x7f090689

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1143
    const v1, 0x7f090143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1145
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1147
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1029
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1161
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1163
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1164
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1165
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ManageApplications$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1227
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 854
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 856
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 858
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 860
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, action:Ljava/lang/String;
    const/4 v10, 0x0

    .line 862
    .local v10, defaultListType:I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 864
    .local v8, className:Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_0

    .line 865
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 867
    :cond_0
    const-class v1, Lcom/android/settings_ex/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 869
    :cond_1
    const/4 v10, 0x1

    .line 880
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 881
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 882
    const-string v1, "defaultListType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 883
    .local v13, tmp:I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_3

    move v10, v13

    .line 884
    :cond_3
    const-string v1, "showBackground"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 887
    .end local v13           #tmp:I
    :cond_4
    iput v10, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    .line 889
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 891
    .local v9, containerIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 893
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0906ab

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 894
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0906aa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 896
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09068e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 899
    .local v0, tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const/4 v11, 0x0

    .line 904
    .local v11, emulated:Z
    if-nez v11, :cond_5

    .line 906
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f090690

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 909
    .restart local v0       #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_5
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09068f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 915
    .restart local v0       #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .end local v0           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f09068d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 920
    .restart local v0       #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    return-void

    .line 862
    .end local v0           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .end local v8           #className:Ljava/lang/String;
    .end local v9           #containerIntent:Landroid/content/Intent;
    .end local v11           #emulated:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 870
    .restart local v8       #className:Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 873
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 874
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 875
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 877
    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1057
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1060
    const v0, 0x7f090682

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020190

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1063
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f090683

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020191

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1066
    const/4 v0, 0x6

    const v1, 0x7f090684

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1068
    const/4 v0, 0x7

    const v1, 0x7f090685

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1070
    const/16 v0, 0x8

    const v1, 0x7f090686

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02044a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1074
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 929
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400af

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 931
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 932
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 934
    const v5, 0x7f0b01f3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 935
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    .line 936
    .local v0, adapter:Lcom/android/settings_ex/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 937
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 938
    const v5, 0x7f0b01f4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 939
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 943
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 944
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 947
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    .line 951
    :cond_1
    if-nez p3, :cond_2

    .line 953
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 954
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 955
    .local v3, tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 956
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 962
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 953
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1089
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1090
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1084
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1015
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1022
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->detachView()V

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1154
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1260
    iget-object v1, p1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1261
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1262
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1264
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1232
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1233
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 1234
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1253
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1254
    :cond_2
    return v1

    .line 1237
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1238
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 1239
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1240
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1242
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1243
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    .line 1244
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1247
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1248
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 993
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 994
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 995
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1079
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 972
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    .line 974
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications;->updateCurrentTab(I)V

    .line 975
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 976
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 980
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 981
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 983
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 985
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 987
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 967
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 968
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1002
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1009
    return-void
.end method

.method tabForType(I)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 1035
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1036
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1037
    .local v1, tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1041
    .end local v1           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1035
    .restart local v1       #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    .end local v1           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1267
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1268
    .local v3, tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1271
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1272
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1273
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1277
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1278
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    .line 1279
    .local v2, t:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1280
    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    .line 1277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1275
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1284
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1285
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1287
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1290
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1093
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurTab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1102
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/ManageApplications;->tabForType(I)Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1103
    .local v1, tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1105
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1106
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1107
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1108
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1109
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1103
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1108
    goto :goto_2

    .line 1111
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1112
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1113
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1114
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1115
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1111
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1112
    goto :goto_4
.end method
