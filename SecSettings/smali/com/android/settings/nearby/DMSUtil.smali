.class public Lcom/android/settings_ex/nearby/DMSUtil;
.super Ljava/lang/Object;
.source "DMSUtil.java"


# static fields
.field public static final ACCESS_ALLOWED_ALL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.changeto.ACCESS_ALLOWED_ALL"

.field public static final ACCESS_ASK_AGAIN:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_AGAIN"

.field public static final ACCESS_ASK_CANCEL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_CANCEL"

.field public static final ACCESS_ASK_OK:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.ACCESS_ASK_OK"

.field public static final DELETE_ITEMS:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.DELETE_ITEMS"

.field public static final DEVICE_NAME_CHANGED:Ljava/lang/String; = "com.android.settings_ex.DEVICE_NAME_CHANGED"

.field public static final SETTING_STOP:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.STOP"

.field public static final SET_NEARBY_FLAG:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

.field public static final START_NEARBY_SETTINGS:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.START_NEARBY_SETTINGS"

.field public static final UPDATE_LIST:Ljava/lang/String; = "com.android.settings_ex.allshare.UPDATE_LIST"

.field public static final UPLOAD_ALLOWED_ALL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.changeto.UPLOAD_ALLOWED_ALL"

.field public static final UPLOAD_ASK_CANCEL:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_CANCEL"

.field public static final UPLOAD_ASK_OK:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_OK"

.field public static final UPLOAD_ASK_REMOVE_POPUP:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.REMOVE_UPLOAD_ASK_POPUP"

.field public static final UPLOAD_ASK_TIME_OVER:Ljava/lang/String; = "com.sec.android.nearby.mediaserver.UPLOAD_ASK_TIME_OVER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLightTheme()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
