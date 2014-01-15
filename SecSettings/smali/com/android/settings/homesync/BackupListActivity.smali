.class public Lcom/android/settings_ex/homesync/BackupListActivity;
.super Landroid/app/ListFragment;
.source "BackupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/homesync/BackupListActivity$1;,
        Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;,
        Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;,
        Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeSyncBackupListActivity"

.field static final listname:[Ljava/lang/String;


# instance fields
.field private btnBackup:Landroid/widget/Button;

.field list_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mPersonalSelected:Z

.field private mPrivateSelected:Z

.field private mSharedSelected:Z

.field private mSourceTotalSize:J

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Shared"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Private"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Encrypted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/homesync/BackupListActivity;->listname:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 40
    const-string v0, "jiyoung.kong@gmail.com"

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mAccountName:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSharedSelected:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPersonalSelected:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPrivateSelected:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->list_info:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method private MakeItemList()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, root_path:Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;

    invoke-direct {v3, p0, v10}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Lcom/android/settings_ex/homesync/BackupListActivity$1;)V

    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v7

    const-string v5, "Shared"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    new-instance v3, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;

    invoke-direct {v3, p0, v10}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Lcom/android/settings_ex/homesync/BackupListActivity$1;)V

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/secdata/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Personel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "Personel"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    new-instance v3, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;

    invoke-direct {v3, p0, v10}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Lcom/android/settings_ex/homesync/BackupListActivity$1;)V

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/secdata/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Private"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "Private"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    const-string v3, "HomeSyncBackupListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Shared"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v3, "HomeSyncBackupListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test2 = /secdata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Personel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v3, "HomeSyncBackupListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test3 = /secdata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Private"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040015

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->list_info:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 74
    .local v1, m_adapter:Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 77
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 79
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/homesync/BackupListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/homesync/BackupListActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J

    return-wide p1
.end method

.method static synthetic access$114(Lcom/android/settings_ex/homesync/BackupListActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J

    return-wide v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/homesync/BackupListActivity;->MakeItemList()V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    const v0, 0x7f040014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 172
    const-string v2, "BackupListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez p3, :cond_2

    .line 174
    iget-boolean v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSharedSelected:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mSharedSelected:Z

    .line 179
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_2
    if-ne p3, v1, :cond_4

    .line 176
    iget-boolean v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPersonalSelected:Z

    if-eqz v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPersonalSelected:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 177
    :cond_4
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 178
    iget-boolean v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPrivateSelected:Z

    if-eqz v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/BackupListActivity;->mPrivateSelected:Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method
