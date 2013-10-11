.class Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LivePreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/LivePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 137
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 200
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    return-void

    .line 208
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 203
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const/4 v0, 0x0

    monitor-exit p0

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 146
    monitor-exit p0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 153
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    :try_start_1
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 167
    monitor-exit p0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 222
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 171
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 172
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 174
    :try_start_0
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$200()Landroid/view/View;

    move-result-object v9

    .line 175
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 176
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v7

    .line 180
    .local v7, e:Landroid/os/RemoteException;
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 189
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 190
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 191
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method
