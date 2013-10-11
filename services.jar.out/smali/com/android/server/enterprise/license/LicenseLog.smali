.class public final Lcom/android/server/enterprise/license/LicenseLog;
.super Ljava/lang/Object;
.source "LicenseLog.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .parameter "apiName"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->log(Ljava/lang/String;)V

    .line 48
    return-void
.end method
