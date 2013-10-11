.class public Lcom/android/server/ssrm/mDNLeOnOff;
.super Lcom/android/server/ssrm/FgAppListener;
.source "mDNLeOnOff.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static isLockScreenOn:Z

.field private static ismDNIeAppFg:Z

.field private static mPreviousmDNIeValue:I


# instance fields
.field private mResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    const-string v0, "mDNLeOnOff"

    sput-object v0, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    .line 8
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->DEBUG:Z

    .line 10
    sput-boolean v2, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 11
    sput-boolean v2, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    .line 13
    sput v2, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    .line 16
    const-string v0, "com.google.android.apps.books"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateCurrentmDNIe()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    sget-boolean v1, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    if-eqz v1, :cond_0

    .line 46
    sget-boolean v1, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method protected onFgAppInPackageList(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 22
    sput-boolean p1, Lcom/android/server/ssrm/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 23
    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    .line 24
    return-void
.end method

.method protected onLockScreenRelease()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    .line 36
    return-void
.end method

.method protected onScreenOff()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/mDNLeOnOff;->isLockScreenOn:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIe()V

    .line 30
    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "statusName"
    .parameter "statusValue"
    .parameter "packageName"

    .prologue
    .line 77
    const-string v0, "SecHardwareInterface_setEbookMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: SecHardwareInterface_setEbookMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p2, :cond_1

    .line 80
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIeSysFs(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIeSysFs(I)V

    goto :goto_0
.end method

.method protected updatemDNIe()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/server/ssrm/mDNLeOnOff;->calculateCurrentmDNIe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/mDNLeOnOff;->updatemDNIeSysFs(I)V

    .line 41
    return-void
.end method

.method protected updatemDNIeSysFs(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 58
    sget v1, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    if-eq p1, v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    .line 61
    sput p1, Lcom/android/server/ssrm/mDNLeOnOff;->mPreviousmDNIeValue:I

    .line 62
    sget-object v1, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNLeUIMode => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/mDNLeOnOff;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e0:Ljava/lang/IllegalAccessError;
    sget-object v1, Lcom/android/server/ssrm/mDNLeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "IllegalAccessError occured!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
