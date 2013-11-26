.class public Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
.super Landroid/app/DialogFragment;
.source "CameraSharingDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;,
        Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraSharingDeviceDialog"


# instance fields
.field private DeviceCheckStatus:[Z

.field private final MAX_USER:I

.field private final mSampleSize:I

.field private final mTitle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 42
    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->MAX_USER:I

    .line 43
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    .line 44
    const v0, 0x7f0a0192

    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mTitle:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mSampleSize:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    return-object v0
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "mFilePath"

    .prologue
    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 121
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 123
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v4

    .line 129
    .local v4, mDeviceCount:I
    new-array v5, v4, [Lcom/samsung/shareshot/User;

    .line 130
    .local v5, mDeviceData:[Lcom/samsung/shareshot/User;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v6, mDeviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;>;"
    new-array v3, v4, [Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;

    .line 133
    .local v3, mDevice:[Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v7

    aput-object v7, v5, v2

    .line 136
    aget-object v7, v5, v2

    if-eqz v7, :cond_0

    .line 137
    const-string v7, "CameraSharingDeviceDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDeviceCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v7, "CameraSharingDeviceDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceImage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v9}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v7, "CameraSharingDeviceDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v9}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v7, "CameraSharingDeviceDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceCheck = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v9}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v7, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    aget-object v8, v5, v2

    invoke-virtual {v8}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 143
    new-instance v7, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;

    aget-object v8, v5, v2

    invoke-virtual {v8}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v9}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v5, v2

    invoke-virtual {v10}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v10

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    aput-object v7, v3, v2

    .line 145
    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 149
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-direct {v0, p0, v7, v8, v6}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 150
    .local v0, device_adapter:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a0192

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 153
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const/high16 v7, 0x104

    new-instance v8, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    const v7, 0x104000a

    new-instance v8, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;

    invoke-direct {v8, p0, v4, v5}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;I[Lcom/samsung/shareshot/User;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
