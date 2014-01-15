.class public Lcom/android/settings_ex/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/Utils$ApInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field public static final DBG_LEVEL:I = 0x2

.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings_ex.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings_ex.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings_ex.title"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1

.field public static final VDBG:Z = true

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static filePath:Ljava/io/File;

.field private static flagForDefaultAp:Z

.field private static mApInfo:[Lcom/android/settings_ex/Utils$ApInfo;

.field public static mDeviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/Utils;->DBG:Z

    .line 1245
    sput-boolean v1, Lcom/android/settings_ex/Utils;->flagForDefaultAp:Z

    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    return-void
.end method

.method public static DisableCloud()Z
    .locals 2

    .prologue
    .line 1239
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, salesCode:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "MAX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static autoTurnOffMotionEngine(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 487
    .local v9, mResolver:Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 488
    .local v8, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    .line 489
    .local v6, isTablet:Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    .line 491
    .local v7, isVoiceCapable:Z
    const/4 v3, 0x0

    .line 492
    .local v3, detail_motion:I
    const-string v20, "master_motion"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 493
    const-string v20, "motion_zooming"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 495
    .local v18, tiltZoom:I
    const/16 v17, 0x0

    .line 497
    .local v17, tiltScroll:I
    const/4 v13, 0x0

    .line 499
    .local v13, panMove:I
    const-string v20, "motion_pan_to_browse_image"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 501
    .local v12, panBrowse:I
    const/4 v15, 0x0

    .line 503
    .local v15, shake:I
    const/4 v5, 0x0

    .line 505
    .local v5, doubleTap:I
    if-nez v7, :cond_2

    const-string v20, "motion_pick_up"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 507
    .local v16, smartAlert:I
    :goto_0
    if-nez v6, :cond_3

    const-string v20, "motion_pick_up_to_call_out"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 509
    .local v4, directCall:I
    :goto_1
    if-nez v6, :cond_4

    const-string v20, "motion_overturn"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 512
    .local v19, turnover:I
    :goto_2
    or-int v20, v18, v17

    or-int v20, v20, v13

    or-int v20, v20, v12

    or-int v20, v20, v15

    or-int v20, v20, v5

    or-int v20, v20, v16

    or-int v20, v20, v4

    or-int v3, v20, v19

    .line 515
    .end local v4           #directCall:I
    .end local v5           #doubleTap:I
    .end local v12           #panBrowse:I
    .end local v13           #panMove:I
    .end local v15           #shake:I
    .end local v16           #smartAlert:I
    .end local v17           #tiltScroll:I
    .end local v18           #tiltZoom:I
    .end local v19           #turnover:I
    :cond_0
    const/4 v10, 0x0

    .line 517
    .local v10, motionUnlock:I
    const/4 v2, 0x0

    .line 520
    .local v2, CameraQuickAccess:I
    or-int v20, v3, v10

    or-int v20, v20, v2

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/4 v14, 0x1

    .line 522
    .local v14, result:Z
    :goto_3
    if-eqz v14, :cond_1

    .line 523
    const-string v20, "MotionSettings"

    const-string v21, "Utils.autoTurnOffMotionEngine turn off Motion engine!"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v20, "motion_engine"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    new-instance v11, Landroid/content/Intent;

    const-string v20, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v11, motion_changed:Landroid/content/Intent;
    const-string v20, "isEnable"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    .end local v11           #motion_changed:Landroid/content/Intent;
    :cond_1
    return-void

    .line 505
    .end local v2           #CameraQuickAccess:I
    .end local v10           #motionUnlock:I
    .end local v14           #result:Z
    .restart local v5       #doubleTap:I
    .restart local v12       #panBrowse:I
    .restart local v13       #panMove:I
    .restart local v15       #shake:I
    .restart local v17       #tiltScroll:I
    .restart local v18       #tiltZoom:I
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 507
    .restart local v16       #smartAlert:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 509
    .restart local v4       #directCall:I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 520
    .end local v4           #directCall:I
    .end local v5           #doubleTap:I
    .end local v12           #panBrowse:I
    .end local v13           #panMove:I
    .end local v15           #shake:I
    .end local v16           #smartAlert:I
    .end local v17           #tiltScroll:I
    .end local v18           #tiltZoom:I
    .restart local v2       #CameraQuickAccess:I
    .restart local v10       #motionUnlock:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "titleResId"
    .parameter "positiveAction"

    .prologue
    .line 1025
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1026
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1027
    const v1, 0x7f090a0d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1028
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/settings_ex/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1034
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 1218
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1220
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1221
    .local v2, i:I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1222
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1223
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1229
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1234
    .end local v2           #i:I
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1230
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 1231
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1225
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #i:I
    :catch_1
    move-exception v1

    .line 1226
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1229
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1230
    :catch_2
    move-exception v1

    .line 1231
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1228
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1229
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1232
    :goto_2
    throw v3

    .line 1230
    :catch_3
    move-exception v1

    .line 1231
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v5, 0x1

    .line 929
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 931
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 935
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 936
    const/4 v5, 0x0

    .line 945
    :goto_0
    return v5

    .line 938
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 939
    .local v4, userId:I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 940
    .local v3, um:Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 941
    .local v2, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 943
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v6

    goto :goto_0

    .line 938
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #um:Landroid/os/UserManager;
    .end local v4           #userId:I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 816
    if-nez p0, :cond_0

    .line 817
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 825
    :goto_0
    return-object v1

    .line 818
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 821
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 823
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    .line 869
    const/high16 v0, 0x200

    invoke-virtual {p2, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 871
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 872
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 796
    if-nez p0, :cond_1

    .line 806
    :cond_0
    return-object v0

    .line 797
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 799
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    const-string v0, ""

    .line 802
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "batteryChangedIntent"

    .prologue
    .line 830
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 831
    .local v0, level:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 832
    .local v1, scale:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .parameter "res"
    .parameter "batteryChangedIntent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 836
    move-object v0, p1

    .line 838
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 839
    .local v1, plugType:I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 841
    .local v3, status:I
    if-ne v3, v8, :cond_3

    .line 842
    const v5, 0x7f090090

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, statusString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 845
    if-ne v1, v7, :cond_1

    .line 846
    const v2, 0x7f090091

    .line 852
    .local v2, resId:I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 864
    .end local v2           #resId:I
    :cond_0
    :goto_1
    return-object v4

    .line 847
    :cond_1
    if-ne v1, v8, :cond_2

    .line 848
    const v2, 0x7f090092

    .restart local v2       #resId:I
    goto :goto_0

    .line 850
    .end local v2           #resId:I
    :cond_2
    const v2, 0x7f090093

    .restart local v2       #resId:I
    goto :goto_0

    .line 854
    .end local v2           #resId:I
    .end local v4           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 855
    const v5, 0x7f090094

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 856
    .end local v4           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 857
    const v5, 0x7f090095

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 858
    .end local v4           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 859
    const v5, 0x7f090096

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 861
    .end local v4           #statusString:Ljava/lang/String;
    :cond_6
    const v5, 0x7f09008f

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 789
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 791
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 792
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 962
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 966
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 972
    .local v6, localRawProfile:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-object v4

    .line 975
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 980
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 978
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 980
    .local v7, localRowProfileId:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 984
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 990
    .local v10, structuredName:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 993
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 1002
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 980
    .end local v7           #localRowProfileId:J
    .end local v10           #structuredName:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 996
    .restart local v7       #localRowProfileId:J
    .restart local v10       #structuredName:Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 997
    .local v9, partialName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 998
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 1002
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    goto :goto_0

    .end local v9           #partialName:Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 465
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 466
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "full"

    .prologue
    .line 949
    if-eqz p1, :cond_0

    .line 950
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1007
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1008
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1010
    .local v6, profile:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1018
    :goto_0
    return-object v3

    .line 1013
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1018
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1016
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1018
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 957
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, given:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #given:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #given:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "file"

    .prologue
    .line 1199
    const-string v3, ""

    .line 1200
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1201
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 1203
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1204
    invoke-static {v2}, Lcom/android/settings_ex/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1209
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1214
    :goto_0
    return-object v3

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1206
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1210
    :catch_2
    move-exception v1

    .line 1211
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1208
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1212
    :goto_1
    throw v4

    .line 1210
    :catch_3
    move-exception v1

    .line 1211
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .parameter "cm"

    .prologue
    const v8, 0x7f0905df

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 901
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 906
    .local v2, usbAvailable:Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 908
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 910
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 923
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_0
    move v2, v7

    .line 905
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_1
    move v4, v7

    .line 906
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_2
    move v0, v7

    .line 908
    goto :goto_2

    .line 912
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 913
    goto :goto_3

    .line 914
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 915
    goto :goto_3

    .line 916
    :cond_5
    if-eqz v4, :cond_6

    .line 917
    const v6, 0x7f0905dc

    goto :goto_3

    .line 918
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 919
    const v6, 0x7f0905de

    goto :goto_3

    .line 920
    :cond_7
    if-eqz v2, :cond_8

    .line 921
    const v6, 0x7f0905db

    goto :goto_3

    .line 923
    :cond_8
    const v6, 0x7f0905dd

    goto :goto_3
.end method

.method public static getTetheringSummary(Landroid/net/ConnectivityManager;)I
    .locals 10
    .parameter "cm"

    .prologue
    const v8, 0x7f0905e0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1045
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 1047
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 1050
    .local v2, usbAvailable:Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 1052
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 1056
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 1069
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_0
    move v2, v7

    .line 1049
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_1
    move v4, v7

    .line 1050
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_2
    move v0, v7

    .line 1052
    goto :goto_2

    .line 1058
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1059
    const v6, 0x7f0905e2

    goto :goto_3

    .line 1060
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 1061
    goto :goto_3

    .line 1062
    :cond_5
    if-eqz v4, :cond_6

    .line 1063
    const v6, 0x7f0905e3

    goto :goto_3

    .line 1064
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1065
    const v6, 0x7f0905e1

    goto :goto_3

    .line 1066
    :cond_7
    if-eqz v2, :cond_8

    .line 1067
    const v6, 0x7f0905e4

    goto :goto_3

    :cond_8
    move v6, v8

    .line 1069
    goto :goto_3
.end method

.method public static getVendorApInfo()[Lcom/android/settings_ex/Utils$ApInfo;
    .locals 2

    .prologue
    .line 1250
    sget-boolean v0, Lcom/android/settings_ex/Utils;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    .line 1251
    sget-object v0, Lcom/android/settings_ex/Utils;->mApInfo:[Lcom/android/settings_ex/Utils$ApInfo;

    .line 1259
    :goto_0
    return-object v0

    .line 1252
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/Utils;->filePath:Ljava/io/File;

    .line 1254
    sget-object v0, Lcom/android/settings_ex/Utils;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/Utils;->mApInfo:[Lcom/android/settings_ex/Utils$ApInfo;

    .line 1259
    :goto_1
    sget-object v0, Lcom/android/settings_ex/Utils;->mApInfo:[Lcom/android/settings_ex/Utils$ApInfo;

    goto :goto_0

    .line 1257
    :cond_1
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/Utils;->mApInfo:[Lcom/android/settings_ex/Utils$ApInfo;

    goto :goto_1
.end method

.method private static getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings_ex/Utils$ApInfo;
    .locals 17
    .parameter "filename"

    .prologue
    .line 1263
    sget-boolean v14, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "AccessPoint"

    const-string v15, "call Utils.getVendorApInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/settings_ex/Utils;->flagForDefaultAp:Z

    .line 1266
    const-string v1, ""

    .line 1267
    .local v1, buf1:Ljava/lang/String;
    const-string v2, ""

    .line 1269
    .local v2, buf2:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1271
    .local v6, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1274
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, bufLine:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1275
    const-string v14, "ssid=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1276
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1277
    .local v12, ssid:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1278
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    goto :goto_0

    .end local v12           #ssid:Ljava/lang/String;
    :cond_2
    const-string v14, "key_mgmt="

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1280
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1281
    .local v10, secure:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1282
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 1283
    goto/16 :goto_0

    .line 1289
    .end local v10           #secure:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 1291
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1299
    :cond_4
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1300
    .local v13, ssids:[Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1301
    .local v11, secures:[Ljava/lang/String;
    array-length v14, v13

    array-length v15, v11

    if-eq v14, v15, :cond_7

    .line 1302
    const-string v14, "AccessPoint"

    const-string v15, "Parse error default ap"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v9, 0x0

    move-object v6, v7

    .line 1313
    .end local v3           #bufLine:Ljava/lang/String;
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v11           #secures:[Ljava/lang/String;
    .end local v13           #ssids:[Ljava/lang/String;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :cond_5
    :goto_1
    return-object v9

    .line 1292
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v3       #bufLine:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1293
    .local v4, e:Ljava/io/IOException;
    const-string v14, "Utils"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v9, 0x0

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1285
    .end local v3           #bufLine:Ljava/lang/String;
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1286
    .restart local v4       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v14, "Utils"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1287
    const/4 v9, 0x0

    .line 1289
    if-eqz v6, :cond_5

    .line 1291
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1292
    :catch_2
    move-exception v4

    .line 1293
    const-string v14, "Utils"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v9, 0x0

    goto :goto_1

    .line 1289
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v6, :cond_6

    .line 1291
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1294
    :cond_6
    throw v14

    .line 1292
    :catch_3
    move-exception v4

    .line 1293
    .restart local v4       #e:Ljava/io/IOException;
    const-string v14, "Utils"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v9, 0x0

    goto :goto_1

    .line 1306
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v3       #bufLine:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v11       #secures:[Ljava/lang/String;
    .restart local v13       #ssids:[Ljava/lang/String;
    :cond_7
    array-length v8, v13

    .line 1307
    .local v8, networkCount:I
    new-array v9, v8, [Lcom/android/settings_ex/Utils$ApInfo;

    .line 1308
    .local v9, ret:[Lcom/android/settings_ex/Utils$ApInfo;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    if-ge v5, v8, :cond_9

    .line 1309
    new-instance v14, Lcom/android/settings_ex/Utils$ApInfo;

    aget-object v15, v13, v5

    aget-object v16, v11, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/settings_ex/Utils$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v9, v5

    .line 1310
    sget-boolean v14, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v14, :cond_8

    const-string v14, "AccessPoint"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DefaultAp["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v9, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_ex/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v9, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_ex/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    move-object v6, v7

    .line 1313
    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 1289
    .end local v3           #bufLine:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v8           #networkCount:I
    .end local v9           #ret:[Lcom/android/settings_ex/Utils$ApInfo;
    .end local v11           #secures:[Ljava/lang/String;
    .end local v13           #ssids:[Ljava/lang/String;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1285
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 776
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 778
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 779
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1040
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "c"
    .parameter "pkg"

    .prologue
    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1075
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 1077
    .local v1, hasPkg:Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    return v1

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1080
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isChinaModel()Z
    .locals 3

    .prologue
    .line 1185
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, salesCode:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CU"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticModel()Z
    .locals 2

    .prologue
    .line 1160
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 604
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLTE(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 458
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 406
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 407
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 409
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    .line 410
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMessageCapable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 387
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, model:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "KC100S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KC100K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isSimMissing(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 414
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 415
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v4, "phone2"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 416
    .local v3, telephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_0
    const/4 v0, 0x0

    .line 417
    .local v0, isDataOnly_Sim:Z
    const/4 v1, 0x0

    .line 419
    .local v1, isSimMissing:Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v5, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isLTE(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    :cond_1
    const-string v4, "Settings"

    const-string v5, "isSimMissing : true"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, 0x1

    .line 453
    :cond_2
    const-string v4, "Settings"

    const-string v5, "isSimMissing : false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v1
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 398
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 401
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 536
    const/16 v1, 0x3a

    .line 537
    .local v1, ENABLED_SERVICES_SEPARATOR:C
    const-string v0, "com.google.android.marvin.talkback"

    .line 538
    .local v0, DEFAULT_SCREENREADER_NAME:Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 540
    .local v6, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, enabledServicesSetting:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 543
    const-string v5, ""

    .line 546
    :cond_0
    move-object v2, v6

    .line 548
    .local v2, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 550
    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 551
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, componentNameString:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 554
    .local v4, enabledService:Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    .line 555
    const-string v7, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 556
    const/4 v7, 0x1

    .line 559
    .end local v3           #componentNameString:Ljava/lang/String;
    .end local v4           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 23
    .parameter "context"

    .prologue
    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 619
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 620
    .local v13, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v4, data:Landroid/os/Bundle;
    const/4 v8, 0x1

    .line 622
    .local v8, is_enabled:Z
    const/4 v10, 0x0

    .line 623
    .local v10, option_flag:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f09078e

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, dialog_content:Ljava/lang/String;
    const/16 v20, 0x1

    .line 626
    .local v20, support_assistantmenu:Z
    const/16 v19, 0x1

    .line 628
    .local v19, support_accesscontrol:Z
    const/4 v3, 0x0

    .line 629
    .local v3, assistantmenu:I
    const/4 v7, 0x0

    .line 630
    .local v7, interactioncontrol:I
    const/4 v2, 0x0

    .line 631
    .local v2, airgesture:I
    const/4 v6, 0x0

    .line 632
    .local v6, fingerairview:I
    const/4 v11, 0x0

    .line 633
    .local v11, penairview:I
    const/16 v16, 0x0

    .line 634
    .local v16, smartscreen:I
    const/4 v9, 0x0

    .line 637
    .local v9, multiwindow:I
    add-int/lit8 v10, v10, 0x10

    .line 638
    const-string v21, "air_motion_engine"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 639
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f090c49

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 643
    add-int/lit8 v10, v10, 0x8

    .line 644
    const-string v21, "finger_air_view"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 652
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f090cca

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 656
    add-int/lit8 v10, v10, 0x20

    .line 657
    const-string v21, "assistant_menu"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 658
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f090b4f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    add-int/lit8 v10, v10, 0x2

    .line 663
    const-string v21, "intelligent_sleep_mode"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 664
    .local v18, smartstay:I
    const-string v21, "intelligent_rotation_mode"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 665
    .local v15, smartrotation:I
    const-string v21, "smart_pause"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 666
    .local v14, smartpause:I
    const-string v21, "smart_scroll"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 667
    .local v17, smartscroll:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f090df2

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    or-int v21, v18, v15

    or-int v21, v21, v14

    or-int v16, v21, v17

    .line 672
    add-int/lit8 v10, v10, 0x40

    .line 673
    const-string v21, "access_control_use"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 674
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f090778

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.sec.feature.multiwindow.phone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 678
    add-int/lit8 v10, v10, 0x1

    .line 679
    const-string v21, "multi_window_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 680
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f0904f0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 683
    :cond_0
    or-int v21, v7, v3

    or-int v21, v21, v2

    or-int v21, v21, v6

    or-int v21, v21, v11

    or-int v21, v21, v16

    or-int v21, v21, v9

    if-lez v21, :cond_1

    const/4 v8, 0x1

    .line 685
    :goto_0
    const-string v21, "is_enabled"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    const-string v21, "option_flag"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    const-string v21, "dialog_content"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-object v4

    .line 683
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 382
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 384
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 392
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 394
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 6
    .parameter "str"
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1091
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1092
    :cond_0
    const-string v3, "Utils"

    const-string v4, "makeStringWithImage - str or drawable is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_0
    return-object v2

    .line 1094
    :cond_1
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1095
    const-string v3, "Utils"

    const-string v4, "makeStringWithImage - %s is not in str"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :cond_2
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1099
    .local v2, ss:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1100
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1101
    .local v1, span:Landroid/text/style/ImageSpan;
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1102
    .local v0, iconIndex:I
    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;
    .locals 7
    .parameter "str"
    .parameter "drawable"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, locale:Ljava/lang/String;
    const-string v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ur"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "iw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1110
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1116
    :goto_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    .line 1117
    :cond_1
    const-string v4, "Utils"

    const-string v5, "makeStringWithImage - str or drawable is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_1
    return-object v3

    .line 1112
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1119
    :cond_3
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1120
    const-string v4, "Utils"

    const-string v5, "makeStringWithImage - %s is not in str"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1123
    :cond_4
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1124
    .local v3, ss:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1125
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1126
    .local v2, span:Landroid/text/style/ImageSpan;
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1127
    .local v0, iconIndex:I
    add-int/lit8 v4, v0, 0x2

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public static makeStringWithImagePre(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;
    .locals 7
    .parameter "str"
    .parameter "drawable"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, locale:Ljava/lang/String;
    const-string v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ur"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "iw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1135
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1141
    :goto_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    .line 1142
    :cond_1
    const-string v4, "Utils"

    const-string v5, "makeStringWithImage - str or drawable is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :goto_1
    return-object v3

    .line 1137
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1144
    :cond_3
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1145
    const-string v4, "Utils"

    const-string v5, "makeStringWithImage - %s is not in str"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1148
    :cond_4
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1149
    .local v3, ss:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1150
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1151
    .local v2, span:Landroid/text/style/ImageSpan;
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1152
    .local v0, iconIndex:I
    add-int/lit8 v4, v0, 0x2

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 881
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 882
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 885
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 886
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0f003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 888
    .local v3, paddingSide:I
    const v5, 0x7f0f003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 891
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 892
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 894
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 881
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 891
    goto :goto_1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1169
    const-string v1, ""

    .line 1171
    .local v1, sales_code:Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1178
    :cond_0
    :goto_0
    return-object v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Utils"

    const-string v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 204
    .local v3, preference:Landroid/preference/Preference;
    if-nez v3, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v4

    .line 208
    :cond_1
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 212
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 215
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0x3a

    const/4 v8, 0x0

    .line 567
    const/16 v1, 0x3a

    .line 568
    .local v1, ENABLED_SERVICES_SEPARATOR:C
    const-string v0, "com.google.android.marvin.talkback"

    .line 569
    .local v0, DEFAULT_SCREENREADER_NAME:Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v6, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 571
    .local v6, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, enabledServicesSetting:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v8

    .line 576
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v3, v6

    .line 582
    .local v3, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 584
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 585
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, componentNameString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 588
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_3
    if-eqz v4, :cond_2

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 592
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 596
    .end local v4           #componentNameString:Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings_ex.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v7, talk_back_off:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 599
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "option_flag"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 699
    .local v4, resolver:Landroid/content/ContentResolver;
    and-int/lit8 v7, p1, 0x20

    if-lez v7, :cond_0

    .line 700
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v7, "assistant_menu"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, assistantMenu:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.app.assistantmenu"

    const-string v9, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 706
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v1           #assistantMenu:Landroid/content/Intent;
    :cond_0
    and-int/lit8 v7, p1, 0x10

    if-lez v7, :cond_1

    .line 711
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v7, "air_motion_engine"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v0, air_motion_changed:Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    .end local v0           #air_motion_changed:Landroid/content/Intent;
    :cond_1
    and-int/lit8 v7, p1, 0x8

    if-lez v7, :cond_2

    .line 720
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v7, "finger_air_view"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    const-string v7, "finger_air_view_highlight"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v2, finger_air_view_changed:Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    .end local v2           #finger_air_view_changed:Landroid/content/Intent;
    :cond_2
    and-int/lit8 v7, p1, 0x40

    if-lez v7, :cond_3

    .line 731
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v7, "access_control_use"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 733
    const-string v7, "access_control_enabled"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v3, icIntent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.app.accesscontrol"

    const-string v9, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 738
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v3           #icIntent:Landroid/content/Intent;
    :cond_3
    and-int/lit8 v7, p1, 0x4

    if-lez v7, :cond_4

    .line 743
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v7, "pen_hovering"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    :cond_4
    and-int/lit8 v7, p1, 0x2

    if-lez v7, :cond_5

    .line 749
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v7, "intelligent_sleep_mode"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    const-string v7, "intelligent_rotation_mode"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 752
    const-string v7, "smart_pause"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v5, smart_pause_changed:Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    const-string v7, "smart_scroll"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 757
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v6, smart_scroll_changed:Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    .end local v5           #smart_pause_changed:Landroid/content/Intent;
    .end local v6           #smart_scroll_changed:Landroid/content/Intent;
    :cond_5
    and-int/lit8 v7, p1, 0x1

    if-lez v7, :cond_6

    .line 764
    const-string v7, "Utils"

    const-string v8, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v7, "multi_window_enabled"

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    :cond_6
    return-void
.end method

.method public static turnOnMotionEngine(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 474
    const-string v2, "MotionSettings"

    const-string v3, "Utils.turnOnMotionEngine turn on Motion engine!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, motion_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 480
    return-void
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 15
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 315
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 318
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 319
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 320
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 321
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 322
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 326
    .local v11, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 330
    .local v10, summary:Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 332
    .local v8, res:Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 334
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 335
    const-string v12, "com.android.settings_ex.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 336
    const-string v12, "com.android.settings_ex.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 337
    const-string v12, "com.android.settings_ex.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 347
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 348
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 354
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 355
    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 357
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 360
    const/4 v12, 0x1

    .line 368
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_2
    return v12

    .line 320
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    const/4 v12, 0x0

    goto :goto_2

    .line 341
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 339
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 16
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    .line 247
    invoke-virtual/range {p1 .. p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/IconPreferenceScreen;

    .line 249
    .local v8, preference:Lcom/android/settings_ex/IconPreferenceScreen;
    if-nez v8, :cond_0

    .line 250
    const/4 v13, 0x0

    .line 308
    :goto_0
    return v13

    .line 253
    :cond_0
    invoke-virtual {v8}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 254
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 257
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v7, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 258
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 259
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 260
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 265
    .local v12, title:Ljava/lang/String;
    const/4 v11, 0x0

    .line 269
    .local v11, summary:Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 271
    .local v9, res:Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 273
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 274
    const-string v13, "com.android.settings_ex.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 275
    const-string v13, "com.android.settings_ex.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 276
    const-string v13, "com.android.settings_ex.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 286
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 287
    invoke-virtual {v10, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 291
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/settings_ex/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 300
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 259
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #summary:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 280
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v11       #summary:Ljava/lang/String;
    .restart local v12       #title:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 278
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 165
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 166
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 199
    :goto_0
    return v7

    .line 170
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 174
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 175
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 176
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 177
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 182
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 186
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
