.class public final Lcom/android/settings_ex/cloud/CloudSettingConstants;
.super Ljava/lang/Object;
.source "CloudSettingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cloud/CloudSettingConstants$Protocol;,
        Lcom/android/settings_ex/cloud/CloudSettingConstants$ContentsType;,
        Lcom/android/settings_ex/cloud/CloudSettingConstants$Vendor;
    }
.end annotation


# static fields
.field public static final CLOUD_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.cloudagent"

#the value of this static final field might be set in the static constructor
.field public static final C_CHINA:Z = false

.field public static final DROPBOX_ACCOUNT_TYPE:Ljava/lang/String; = "com.dropbox.android.account"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field public static final TAG:Ljava/lang/String; = "CloudSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/cloud/CloudSettingConstants;->C_CHINA:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method
