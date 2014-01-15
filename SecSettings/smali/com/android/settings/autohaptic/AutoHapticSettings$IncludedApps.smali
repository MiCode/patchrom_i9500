.class Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludedApps"
.end annotation


# instance fields
.field mHasVibPerm:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "pkgName"
    .parameter "icon"
    .parameter "hasVibPerm"
    .parameter "p"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    .line 396
    iput-object p3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageName:Ljava/lang/String;

    .line 397
    iput-object p4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 398
    iput-boolean p5, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    .line 399
    iput-object p6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 400
    return-void
.end method
