.class public Lcom/android/settings_ex/homesync/BackupFragment;
.super Landroid/app/Fragment;
.source "BackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupFragment"

.field private static rootView:Landroid/view/View;

.field private static selectedDatesizeTextView:Landroid/widget/TextView;


# instance fields
.field fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

.field private mAccountName:Ljava/lang/String;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCheckBoxListener:Landroid/view/View$OnClickListener;

.field private mCheckPersonal:Landroid/widget/CheckBox;

.field private mCheckPrivate:Landroid/widget/CheckBox;

.field private mCheckShared:Landroid/widget/CheckBox;

.field private mDestAvailSize:J

.field private mDestDirectoryName:Ljava/lang/String;

.field private mDestPath:Ljava/lang/String;

.field private mNextButtonListener:Landroid/view/View$OnClickListener;

.field private mPersonalSelected:Z

.field private mPersonalSourcePrefix:Ljava/lang/String;

.field private mPrivateDataSize:J

.field private mPrivateSelected:Z

.field private mPrivateSourcePrefix:Ljava/lang/String;

.field private mSelectedDatasize:J

.field private mSharedDataSize:J

.field private mSharedSelected:Z

.field private mSharedSourcePrefix:Ljava/lang/String;

.field private mSourceTotalSize:J

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    .line 83
    sput-object v0, Lcom/android/settings_ex/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    .line 74
    iput-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 75
    iput-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 76
    const-string v0, "/storage/emulated/0/"

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedSourcePrefix:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Personal/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPersonalSourcePrefix:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Encrypted/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateSourcePrefix:Ljava/lang/String;

    .line 79
    const-string v0, "HomeSync_Backup"

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    .line 80
    iput-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSourceTotalSize:J

    .line 81
    iput-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestAvailSize:J

    .line 82
    iput-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestPath:Ljava/lang/String;

    .line 84
    iput-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    .line 85
    iput-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J

    .line 86
    iput-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    .line 88
    iput-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    .line 90
    iput-boolean v5, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedSelected:Z

    .line 91
    iput-boolean v5, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPersonalSelected:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateSelected:Z

    .line 154
    new-instance v0, Lcom/android/settings_ex/homesync/BackupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/BackupFragment$1;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lcom/android/settings_ex/homesync/BackupFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/BackupFragment$2;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v0, Lcom/android/settings_ex/homesync/BackupFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/BackupFragment$3;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    .line 336
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/homesync/BackupFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/homesync/BackupFragment;->getTotalSelectedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/homesync/BackupFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/homesync/BackupFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    return-wide p1
.end method

.method static synthetic access$314(Lcom/android/settings_ex/homesync/BackupFragment;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/homesync/BackupFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/homesync/BackupFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    return-wide p1
.end method

.method static synthetic access$514(Lcom/android/settings_ex/homesync/BackupFragment;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/homesync/BackupFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/homesync/BackupFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J

    return-wide p1
.end method

.method static synthetic access$800()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/homesync/BackupFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private addDirectories(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Music/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, tmpF:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #tmpF:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v0       #tmpF:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #tmpF:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Photo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v0       #tmpF:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #tmpF:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v0       #tmpF:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #tmpF:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Documents/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v0       #tmpF:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    return-void
.end method

.method private getTotalSelectedSize()J
    .locals 4

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    .line 146
    .local v0, totalSize:J
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J

    add-long/2addr v0, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-wide v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J

    add-long/2addr v0, v2

    .line 151
    :cond_1
    return-wide v0
.end method


# virtual methods
.method InitBackupDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "destPathPrefix"

    .prologue
    .line 294
    if-nez p1, :cond_1

    .line 295
    const/4 v3, 0x0

    .line 322
    :cond_0
    :goto_0
    return-object v3

    .line 298
    :cond_1
    move-object v3, p1

    .line 300
    .local v3, tmpPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 306
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDir:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v2       #tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 314
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 315
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

    .line 316
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

    .line 318
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDir:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v2       #tmpDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_0
.end method

.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "resId"

    .prologue
    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0912be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0909ed

    new-instance v3, Lcom/android/settings_ex/homesync/BackupFragment$7;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/BackupFragment$7;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method createCancelDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0912a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0909ed

    new-instance v3, Lcom/android/settings_ex/homesync/BackupFragment$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/BackupFragment$5;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090143

    new-instance v3, Lcom/android/settings_ex/homesync/BackupFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/BackupFragment$4;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "BackupFragment"

    const-string v1, "  onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 109
    const v2, 0x7f040013

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "account_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    .line 113
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0b002d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    .line 114
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J

    invoke-static {v4, v5}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 117
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 140
    :goto_0
    return-object v2

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->InitBackupDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestPath:Ljava/lang/String;

    .line 124
    const-string v2, "BackupFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDestPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0b0030

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0b0038

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v4, 0x7f0b0039

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    .local v1, startBackupButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, root_path:Ljava/lang/String;
    new-instance v2, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;Lcom/android/settings_ex/homesync/BackupFragment$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    sget-object v2, Lcom/android/settings_ex/homesync/BackupFragment;->rootView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public startBackup(Lcom/android/settings_ex/homesync/FileOperationProgress;)V
    .locals 10
    .parameter "progressScreen"

    .prologue
    .line 250
    const-string v0, "BackupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedSourcePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDestDirectoryName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "BackupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Personal ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPersonalSourcePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDestDirectoryName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "BackupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Private ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateSourcePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDestDirectoryName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v4, listClipBoard:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mSharedSourcePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/settings_ex/homesync/BackupFragment;->addDirectories(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    :cond_0
    const/4 v8, 0x0

    .line 275
    .local v8, encryptedSourceDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mDestPath:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, destDirectory:Ljava/io/File;
    new-instance v0, Lcom/android/settings_ex/homesync/BackupFragment$6;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v6, Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/homesync/BackupFragment$6;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;Ljava/util/ArrayList;Ljava/io/File;Lcom/android/settings_ex/homesync/FileOperationPaste$PasteType;ILjava/io/File;Lcom/android/settings_ex/homesync/FileOperationProgress;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/homesync/FileOperationPaste;->setAccountName(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment;->fop:Lcom/android/settings_ex/homesync/FileOperationPaste;

    invoke-virtual {v0}, Lcom/android/settings_ex/homesync/FileOperation;->execute()V

    .line 290
    return-void
.end method
