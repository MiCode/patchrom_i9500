.class public Lcom/android/settings_ex/myprofile/MyProfileWallpaper;
.super Ljava/lang/Object;
.source "MyProfileWallpaper.java"


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->DBG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    .line 33
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->setLockScreenWallpaper()V

    .line 41
    return-void
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 10

    .prologue
    const v9, 0x1080451

    .line 91
    new-instance v1, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, fileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, filePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, fileMultiCSCPng:Ljava/io/File;
    const/4 v5, 0x0

    .line 96
    .local v5, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 98
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    .line 123
    .local v7, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_0

    .line 124
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 126
    .restart local v7       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 131
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    .line 132
    const/4 v7, 0x0

    .line 133
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-object v7

    .line 99
    .end local v5           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 101
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 104
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 105
    .end local v5           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 107
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #is:Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 111
    .end local v5           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 113
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 114
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 116
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    move-object v5, v6

    .line 118
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 120
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 127
    .restart local v7       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    .end local v7           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 54
    invoke-static {}, Lcom/android/settings_ex/myprofile/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 57
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Admin wallpaper EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 68
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 69
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 72
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 75
    .local v2, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    :try_start_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    iput-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 82
    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 81
    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 84
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 85
    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 79
    .end local v2           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method
