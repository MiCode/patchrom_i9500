.class public Landroid/app/wallpaperbackup/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/Controller$REQ_SIZE;,
        Landroid/app/wallpaperbackup/Controller$ERR_CODE;,
        Landroid/app/wallpaperbackup/Controller$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.jpg"

.field public static final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_WALLPAPER"

.field public static final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_WALLPAPER"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field public static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SAVE_PATH:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "XMl_BNR_APK_REV"

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "wallpaper"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field private mHeight:I

.field private mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field private mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

.field private mWidth:I

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "SAVE_PATH"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SAVE_PATH:Ljava/lang/String;

    .line 34
    const-string v0, "RESULT"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "ERR_CODE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    .line 36
    const-string v0, "REQ_SIZE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "SOURCE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    .line 50
    const-wide/32 v0, 0xa00000

    sput-wide v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 43
    sget-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 44
    sget-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    .line 290
    return-void
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "basePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wallpaper.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, imageNameWithPath:Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, imageName:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 126
    .local v2, wallpaperType:Z
    if-eqz v2, :cond_0

    .line 128
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return v2
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "imageName"
    .parameter "basePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v6, userList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUserPOJO;>;"
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget v1, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    iget-object v4, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    const/16 v5, 0x65

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 194
    .local v0, object:Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;

    invoke-direct {v1, v6, p2}, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private deleteFiles(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, sd:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #sd:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "basePath"

    .prologue
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 202
    .local v0, imageName:Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "wallpaper/wallpaper.jpg"

    .line 136
    .local v0, mImageName:Ljava/lang/String;
    return-object v0
.end method

.method private getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;
    .locals 3
    .parameter "basePath"
    .parameter "recItem"

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 208
    .local v0, imageName:Ljava/lang/String;
    return-object v0
.end method

.method private isWallpaperUserFileExists()Z
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, appsFileWallpaperUser:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "nameOfImageAlongWithPath"
    .parameter "bmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, sd:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 240
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 241
    .local v0, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 243
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 244
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 246
    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 249
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 250
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 253
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "imageNamePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 213
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    .local v2, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/Controller;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, image:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 217
    .local v4, wpi:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_0

    .line 219
    invoke-static {p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 222
    const/4 v1, 0x1

    .line 226
    .local v1, returnValue:Z
    :goto_0
    return v1

    .line 225
    .end local v1           #returnValue:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #returnValue:Z
    goto :goto_0
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "basePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->isWallpaperUserFileExists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    new-instance v2, Landroid/app/wallpaperbackup/LiveChange;

    invoke-direct {v2, p1}, Landroid/app/wallpaperbackup/LiveChange;-><init>(Landroid/content/Context;)V

    .line 167
    .local v2, liveChange:Landroid/app/wallpaperbackup/LiveChange;
    new-instance v5, Landroid/app/wallpaperbackup/WallpaperXmlParser;

    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v5, p1, v6}, Landroid/app/wallpaperbackup/WallpaperXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    .local v5, wallpaperParser:Landroid/app/wallpaperbackup/WallpaperXmlParser;
    invoke-virtual {v5}, Landroid/app/wallpaperbackup/WallpaperXmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    move-result-object v3

    .line 169
    .local v3, mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 171
    .local v4, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-direct {p0, p2, v3}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v4, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {v3}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getComponent()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, com:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/app/wallpaperbackup/LiveChange;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v0           #com:Ljava/lang/String;
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #liveChange:Landroid/app/wallpaperbackup/LiveChange;
    .end local v3           #mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    .end local v4           #wallpaperManager:Landroid/app/WallpaperManager;
    .end local v5           #wallpaperParser:Landroid/app/wallpaperbackup/WallpaperXmlParser;
    :cond_1
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "basePath"
    .parameter "source"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, availableBlocks:J
    const-wide/16 v2, 0x0

    .line 55
    .local v2, blockSizeInBytes:J
    const-wide/32 v5, 0x40000000

    .line 58
    .local v5, freeSpaceInBytes:J
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 59
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 60
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v2, v9

    .line 61
    mul-long v5, v0, v2

    .line 68
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    :try_start_1
    sget-wide v9, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_0

    .line 71
    sget-object v9, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 72
    sget-object v9, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 73
    sget-object v9, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v7, intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v9, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v10}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    sget-object v9, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v10}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    sget-object v9, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v10}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    sget-object v9, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v7, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void

    .line 63
    .end local v7           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 64
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    sget-object v9, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 77
    sget-object v9, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 84
    :goto_2
    sget-object v9, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v4

    .line 88
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v9, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 89
    sget-object v9, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 90
    sget-object v9, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_1

    .line 80
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    sget-object v9, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 81
    sget-object v9, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v9, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "basePath"
    .parameter "source"

    .prologue
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wallpaper.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 145
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 146
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void

    .line 147
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 150
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 151
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_0
.end method
