.class public Lcom/android/providers/settings/cloud/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static DEBUG:Z

.field private static mPendingIntentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/cloudsettings_staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/settings/cloud/util/Utils;->DEBUG:Z

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/settings/cloud/util/Utils;->mPendingIntentIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLongPref(Ljava/lang/String;Landroid/content/Context;)J
    .locals 3
    .parameter "key"
    .parameter "context"

    .prologue
    .line 228
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    .local v0, pref:Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setLongPref(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 216
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method
