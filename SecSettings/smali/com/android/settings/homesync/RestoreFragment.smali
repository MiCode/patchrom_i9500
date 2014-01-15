.class public Lcom/android/settings_ex/homesync/RestoreFragment;
.super Landroid/app/Fragment;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;,
        Lcom/android/settings_ex/homesync/RestoreFragment$ListItem;,
        Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreFragment"

.field private static rootView:Landroid/view/View;


# instance fields
.field private backupList:Landroid/widget/ListView;

.field fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

.field private list_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/homesync/RestoreFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mDestAvailSize:J

.field private mDestDateName:Ljava/lang/String;

.field private mNextButtonListener:Landroid/view/View$OnClickListener;

.field private mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

.field private mPersonalDestPrefix:Ljava/lang/String;

.field private mPersonalSelected:Z

.field private mPrivateDestPrefix:Ljava/lang/String;

.field private mPrivateSelected:Z

.field private mRadioButtonListener:Landroid/view/View$OnClickListener;

.field private mSharedDestPrefix:Ljava/lang/String;

.field private mSharedSelected:Z

.field private mSourceDirectoryName:Ljava/lang/String;

.field private mSourceTotalSize:J

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private m_adapter:Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

.field private mbackupListListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 73
    iput-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 74
    const-string v0, "/storage/emulated/0/"

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSharedDestPrefix:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Personal/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPersonalDestPrefix:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Encrypted/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPrivateDestPrefix:Ljava/lang/String;

    .line 77
    const-string v0, "HomeSync_Backup"

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    .line 80
    iput-wide v4, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J

    .line 81
    iput-wide v4, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestAvailSize:J

    .line 82
    iput-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->m_adapter:Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

    .line 83
    iput-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    .line 86
    iput-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    .line 88
    iput-boolean v3, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSharedSelected:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPersonalSelected:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPrivateSelected:Z

    .line 140
    new-instance v0, Lcom/android/settings_ex/homesync/RestoreFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/RestoreFragment$1;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/settings_ex/homesync/RestoreFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/RestoreFragment$2;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    .line 183
    new-instance v0, Lcom/android/settings_ex/homesync/RestoreFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/RestoreFragment$3;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mbackupListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 304
    return-void
.end method

.method private MakeItemList()V
    .locals 10

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 230
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 232
    .local v1, files:[Ljava/io/File;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 234
    .local v4, titleList:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 236
    .local v3, size:I
    iget-object v5, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 237
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 239
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 240
    const-string v5, "RestoreFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "titleList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v5, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/RestoreFragment$1;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v4, v2

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    new-instance v5, Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040112

    iget-object v8, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->m_adapter:Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/homesync/RestoreFragment;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;)Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/homesync/RestoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/homesync/RestoreFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/homesync/RestoreFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide p1
.end method

.method static synthetic access$314(Lcom/android/settings_ex/homesync/RestoreFragment;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/homesync/RestoreFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/homesync/RestoreFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method InitBackupDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "destPathPrefix"

    .prologue
    .line 194
    if-nez p1, :cond_1

    .line 195
    const/4 v3, 0x0

    .line 222
    :cond_0
    :goto_0
    return-object v3

    .line 198
    :cond_1
    move-object v3, p1

    .line 200
    .local v3, tmpPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 206
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDir:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v2       #tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 214
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, dateString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDir:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v2       #tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "RestoreFragment"

    const-string v1, "  onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    .line 108
    :cond_0
    const v6, 0x7f040111

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 112
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, tmpFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestAvailSize:J

    .line 114
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0342

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, sizeTextView:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestAvailSize:J

    invoke-static {v7, v8}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0346

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 119
    .local v0, radioOverwrite:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0347

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 122
    .local v2, radioSkipAll:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0348

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 125
    .local v1, radioSelectNewFile:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0349

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 128
    .local v4, startRestoreButton:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v7, 0x7f0b0344

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    .line 131
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mbackupListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/homesync/RestoreFragment;->MakeItemList()V

    .line 135
    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->m_adapter:Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    sget-object v6, Lcom/android/settings_ex/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-object v6
.end method

.method public startRestore(Lcom/android/settings_ex/homesync/FileOperationProgress;)V
    .locals 12
    .parameter "progressScreen"

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, sourceDirPath:Ljava/lang/String;
    const-string v0, "RestoreFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRestore sourceDirPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v4, listClipBoard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v11, tmpF:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mSharedDestPrefix:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, destDirectory:Ljava/io/File;
    new-instance v0, Lcom/android/settings_ex/homesync/RestoreFragment$4;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mPasteType:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/homesync/RestoreFragment$4;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;Ljava/util/ArrayList;Ljava/io/File;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;ILjava/io/File;Lcom/android/settings_ex/homesync/FileOperationProgress;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/homesync/FileOperationPaste;->setAccountName(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/homesync/RestoreFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    invoke-virtual {v0}, Lcom/android/settings_ex/homesync/FileOperation;->execute()V

    .line 363
    return-void
.end method
