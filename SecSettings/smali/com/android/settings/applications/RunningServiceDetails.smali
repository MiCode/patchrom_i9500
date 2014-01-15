.class public Lcom/android/settings_ex/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final TAG:Ljava/lang/String; = "RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field private mRes:Landroid/app/enterprise/RestrictionPolicy;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings_ex/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 523
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 609
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 611
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 612
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 613
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 598
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    .line 600
    .local v0, ad:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    .end local v0           #ad:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 598
    .restart local v0       #ad:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v0           #ad:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 462
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 469
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    iput-object v6, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 477
    :cond_2
    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 479
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 480
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 482
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 484
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 488
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 489
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 486
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 491
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 492
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 495
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 498
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .parameter "item"
    .parameter "inclServices"
    .parameter "inclProcesses"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 431
    if-eqz p1, :cond_1

    .line 432
    if-eqz p2, :cond_0

    .line 433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 434
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0           #i:I
    :cond_0
    if-eqz p3, :cond_1

    .line 439
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 443
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V

    .line 459
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 443
    goto :goto_1

    .line 447
    :cond_3
    const/4 v0, -0x1

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 448
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 450
    .local v1, pi:Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 447
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 448
    .end local v1           #pi:Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 454
    .restart local v1       #pi:Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    const/4 v12, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 373
    new-instance v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 374
    .local v2, detail:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040118

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 376
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    iput-object v5, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 378
    new-instance v9, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 379
    iget-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 381
    const v9, 0x7f0b0351

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 382
    .local v1, description:Landroid/widget/TextView;
    iget v9, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 385
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-void

    .line 386
    :cond_1
    if-eqz p2, :cond_2

    .line 387
    const v9, 0x7f0906e0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 389
    :cond_2
    const/4 v8, 0x0

    .line 390
    .local v8, textid:I
    const/4 v3, 0x0

    .line 391
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 392
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 395
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 421
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :pswitch_0
    const v8, 0x7f0906e2

    .line 398
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 400
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 402
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 409
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0906e1

    .line 410
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 412
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 414
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/settings_ex/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 416
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 404
    :catch_1
    move-exception v9

    goto :goto_1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 253
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040123

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0906d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumProcesses:I

    .line 260
    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings_ex/applications/RunningState$ServiceItem;Lcom/android/settings_ex/applications/RunningState$MergedItem;ZZ)V
    .locals 13
    .parameter "si"
    .parameter "mi"
    .parameter "isService"
    .parameter "inclDetails"

    .prologue
    .line 264
    if-eqz p3, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addServicesHeader()V

    .line 274
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 276
    .local v0, bi:Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails;)V

    .line 277
    .local v3, detail:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040119

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 279
    .local v7, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    iput-object v7, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 281
    iput-object p1, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 282
    new-instance v9, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v7}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 283
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v0, v11}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 285
    if-nez p4, :cond_1

    .line 286
    const v9, 0x7f0b0350

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_1
    if-eqz p1, :cond_2

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v9, :cond_2

    .line 290
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 294
    :cond_2
    const v9, 0x7f0b0351

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, description:Landroid/widget/TextView;
    const v9, 0x7f0b0272

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 296
    const v9, 0x7f0b0271

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 298
    if-eqz p3, :cond_5

    iget v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_5

    .line 302
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v9, 0x7f0b0198

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void

    .line 266
    .end local v0           #bi:Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .end local v7           #root:Landroid/view/View;
    :cond_3
    iget v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 274
    goto/16 :goto_1

    .line 305
    .restart local v0       #bi:Lcom/android/settings_ex/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;
    .restart local v7       #root:Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_7

    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v9, :cond_7

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v11, v11, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iget-object v12, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_3
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v10, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_b

    const v9, 0x7f0906db

    :goto_4
    invoke-virtual {v11, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :try_start_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Landroid/app/enterprise/RestrictionPolicy;->isStopSystemAppAllowed()Z

    move-result v9

    if-nez v9, :cond_6

    .line 342
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v10, "android"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 343
    .local v8, sys:Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 345
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    .end local v8           #sys:Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_5
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v10, 0x10405b9

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 355
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "send_action_app_error"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 357
    .local v5, enabled:I
    if-eqz v5, :cond_d

    if-eqz p1, :cond_d

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v9, v10, v11}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 361
    iget-object v10, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 310
    .end local v5           #enabled:I
    :cond_7
    iget-boolean v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v9, :cond_8

    .line 311
    const v9, 0x7f0906de

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 312
    :cond_8
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_9

    .line 314
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v9, p1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, label:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0906df

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 319
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v6           #label:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_3

    .line 322
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz p1, :cond_a

    const v9, 0x7f0906dc

    :goto_7
    invoke-virtual {v10, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    const v9, 0x7f0906dd

    goto :goto_7

    .line 329
    :cond_b
    const v9, 0x7f0906da

    goto/16 :goto_4

    .line 348
    :catch_1
    move-exception v4

    .line 349
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RunningServicesDetails"

    const-string v10, "Unable to get package info"

    invoke-static {v9, v10, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 361
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #enabled:I
    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    .line 363
    :cond_d
    iget-object v9, v3, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 243
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040123

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0906d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mNumServices:I

    .line 250
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 662
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 663
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->waitForData()V

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 218
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 220
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 221
    .local v2, mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 224
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 227
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    :cond_4
    move-object v1, v2

    .line 235
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 236
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 237
    const/4 v4, 0x1

    .line 239
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 536
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 538
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUid:I

    .line 539
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mUserId:I

    .line 540
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "process"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mShowBackground:Z

    .line 543
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 546
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 549
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 550
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRes:Landroid/app/enterprise/RestrictionPolicy;

    .line 553
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RunningServicesDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 569
    const v1, 0x7f040117

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, view:Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 572
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 573
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 574
    const v1, 0x7f0b034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 575
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 581
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mHaveData:Z

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 589
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 688
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 690
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 693
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 694
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 697
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->ensureData()V

    .line 595
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/4 p1, 0x1

    .line 504
    :cond_0
    if-eqz p1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->addDetailViews()V

    .line 520
    :cond_1
    :goto_1
    return-void

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0906d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 515
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 680
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method
