.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContainerID:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportKOX:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "infoFile"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 63
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 64
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .parameter "infoFile"
    .parameter "infoFileKNOX"
    .parameter "containerID"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 70
    iput p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 72
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 73
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 76
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    return v0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 2
    .parameter "format"

    .prologue
    .line 80
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-eq v0, p1, :cond_0

    .line 81
    iput p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 82
    if-nez p1, :cond_1

    .line 83
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET personal mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET KNOX mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "index"
    .parameter "element"

    .prologue
    const/4 v1, 0x1

    .line 157
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "add data..file system"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_2

    .line 160
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 162
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 166
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 181
    :cond_1
    :goto_0
    return v1

    .line 173
    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 175
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 181
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .parameter "element"

    .prologue
    const/4 v1, 0x1

    .line 140
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 142
    .local v0, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 153
    :goto_0
    return v1

    .line 147
    .end local v0           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 148
    .restart local v0       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 235
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 238
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "index"

    .prologue
    .line 251
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 252
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .parameter "index"

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_3

    .line 187
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 188
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 190
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 210
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 211
    const/4 v3, 0x0

    .line 213
    :goto_1
    return-object v3

    .line 194
    :cond_1
    const/4 v0, 0x0

    .line 195
    .local v0, deleteItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 196
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #deleteItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 197
    .restart local v0       #deleteItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    .end local v0           #deleteItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 207
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    goto :goto_1
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .parameter "clip"

    .prologue
    const/4 v0, 0x1

    .line 218
    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 229
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .parameter "index"
    .parameter "element"

    .prologue
    .line 92
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_3

    .line 93
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 94
    .local v2, wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 96
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 101
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 102
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 106
    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 109
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 110
    .restart local v1       #updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 112
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_1

    .line 113
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 132
    .end local v0           #i:I
    .end local v1           #updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 135
    :goto_2
    return-object v3

    .line 108
    .restart local v0       #i:I
    .restart local v1       #updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0           #i:I
    .end local v1           #updateItem:Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 121
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 123
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 126
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 127
    .restart local v2       #wrap:Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_1

    .line 128
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1

    .line 135
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
