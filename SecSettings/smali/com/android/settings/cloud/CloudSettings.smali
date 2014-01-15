.class public Lcom/android/settings_ex/cloud/CloudSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"


# static fields
.field private static mInstance:Lcom/android/settings_ex/cloud/CloudSettings;


# instance fields
.field private accountName:Ljava/lang/String;

.field private documentSync:Z

.field private documentSyncFolderName:Ljava/lang/String;

.field private mIsWifiOnlyDoc:Z

.field private mIsWifiOnlyMusic:Z

.field private mIsWifiOnlyPhoto:Z

.field private mIsWifiOnlyVideo:Z

.field private mSupportDocumentSync:Z

.field private mSupportMusicSync:Z

.field private mSupportPhotoSync:Z

.field private mSupportVideoSync:Z

.field private musicSync:Z

.field private numberOfDisplayingPhotos:I

.field private photoSync:Z

.field private storageUsage:Ljava/lang/String;

.field private venderId:I

.field private videoSync:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V

    .line 331
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings_ex/cloud/CloudSettings;
    .locals 3

    .prologue
    .line 297
    const-class v1, Lcom/android/settings_ex/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/settings_ex/cloud/CloudSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/os/Bundle;)Lcom/android/settings_ex/cloud/CloudSettings;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 310
    const-class v1, Lcom/android/settings_ex/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/android/settings_ex/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;

    .line 315
    :goto_0
    sget-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 313
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/cloud/CloudSettings;->mInstance:Lcom/android/settings_ex/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parceCloudSettings(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 255
    if-eqz p1, :cond_0

    .line 257
    const-string v1, "storageVender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->venderId:I

    .line 258
    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->accountName:Ljava/lang/String;

    .line 259
    const-string v1, "documentSyncFolderName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    .line 260
    const-string v1, "numberOfDisplayingPhotos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    .line 263
    const-string v1, "caToSettingsValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, settingsValue:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportPhotoSync:Z

    .line 266
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportVideoSync:Z

    .line 267
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportMusicSync:Z

    .line 268
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportDocumentSync:Z

    .line 270
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->photoSync:Z

    .line 271
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->videoSync:Z

    .line 272
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->musicSync:Z

    .line 273
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSync:Z

    .line 275
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    .line 276
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    .line 277
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_b

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    .line 278
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_c

    :goto_b
    iput-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    .line 282
    .end local v0           #settingsValue:I
    :cond_0
    return-void

    .restart local v0       #settingsValue:I
    :cond_1
    move v1, v3

    .line 265
    goto :goto_0

    :cond_2
    move v1, v3

    .line 266
    goto :goto_1

    :cond_3
    move v1, v3

    .line 267
    goto :goto_2

    :cond_4
    move v1, v3

    .line 268
    goto :goto_3

    :cond_5
    move v1, v3

    .line 270
    goto :goto_4

    :cond_6
    move v1, v3

    .line 271
    goto :goto_5

    :cond_7
    move v1, v3

    .line 272
    goto :goto_6

    :cond_8
    move v1, v3

    .line 273
    goto :goto_7

    :cond_9
    move v1, v3

    .line 275
    goto :goto_8

    :cond_a
    move v1, v3

    .line 276
    goto :goto_9

    :cond_b
    move v1, v3

    .line 277
    goto :goto_a

    :cond_c
    move v2, v3

    .line 278
    goto :goto_b
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentSyncFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfDisplayingPhotos()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    return v0
.end method

.method public getStorageUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getVenderId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->venderId:I

    return v0
.end method

.method public isAccountSet()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentSync()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSync:Z

    return v0
.end method

.method public isMusicSync()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->musicSync:Z

    return v0
.end method

.method public isPhotoSync()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->photoSync:Z

    return v0
.end method

.method public isSupportSync(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportPhotoSync:Z

    goto :goto_0

    .line 136
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportVideoSync:Z

    goto :goto_0

    .line 138
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportMusicSync:Z

    goto :goto_0

    .line 140
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mSupportDocumentSync:Z

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isVideoSync()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->videoSync:Z

    return v0
.end method

.method public isWifiOnly(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    .line 102
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    .line 104
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDocumentSync(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSync:Z

    .line 218
    return-void
.end method

.method public setDocumentSyncFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "documentSyncFolderName"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setMusicSync(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->musicSync:Z

    .line 214
    return-void
.end method

.method public setPhotoSync(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->photoSync:Z

    .line 206
    return-void
.end method

.method public setStorageUsage(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    const-string v0, "storageVender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->venderId:I

    .line 287
    const-string v0, "storageUsage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    .line 289
    :cond_0
    return-void
.end method

.method public setVideoSync(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/settings_ex/cloud/CloudSettings;->videoSync:Z

    .line 210
    return-void
.end method

.method public setWifiOnly(IZ)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    .line 120
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    .line 123
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    .line 126
    :pswitch_3
    iput-boolean p2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageVender--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->venderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentSyncFolderName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->photoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->videoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->musicSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "docSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->documentSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfDisplayingPhotos--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageUsage--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
