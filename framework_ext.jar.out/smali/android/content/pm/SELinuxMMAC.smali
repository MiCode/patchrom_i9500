.class public final Landroid/content/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SELinuxMMAC$1;,
        Landroid/content/pm/SELinuxMMAC$DenyPolicy;,
        Landroid/content/pm/SELinuxMMAC$BlackListPolicy;,
        Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;,
        Landroid/content/pm/SELinuxMMAC$InstallPolicy;,
        Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File; = null

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

.field private static final PKG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Landroid/content/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

.field private static final mNoAuditPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrustedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    .line 85
    sput-object v5, Landroid/content/pm/SELinuxMMAC;->mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 12
    .parameter "pkg"

    .prologue
    const/4 v11, 0x1

    .line 185
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, -0x1

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    .line 187
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v6, v0, v2

    .line 188
    .local v6, s:Landroid/content/pm/Signature;
    if-nez v6, :cond_1

    .line 187
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 192
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 193
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 194
    .local v7, sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v7, :cond_2

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 195
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 196
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;

    .line 197
    .local v1, containerHelper:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->level:I

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    .line 198
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 210
    .end local v1           #containerHelper:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    :goto_1
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_3

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 211
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 212
    .local v8, trustedKey:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 213
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v11, v9, Landroid/content/pm/ApplicationInfo;->isTrusted:B

    .line 216
    .end local v8           #trustedKey:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_4

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 217
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .local v5, noAuditKey:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 219
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v11, v9, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    .line 236
    .end local v5           #noAuditKey:Ljava/lang/String;
    .end local v6           #s:Landroid/content/pm/Signature;
    .end local v7           #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_4
    :goto_2
    return-void

    .line 200
    .restart local v6       #s:Landroid/content/pm/Signature;
    .restart local v7       #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_5
    const/4 v4, -0x1

    .line 201
    .local v4, level:I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v9}, Landroid/content/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-boolean v9, v7, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v9, :cond_2

    .line 203
    :cond_6
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/content/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v4

    .line 204
    if-ltz v4, :cond_2

    .line 205
    invoke-static {p0, v4}, Landroid/content/pm/SELinuxMMAC;->setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_1

    .line 228
    .end local v4           #level:I
    .end local v6           #s:Landroid/content/pm/Signature;
    .end local v7           #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_7
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 229
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_2

    .line 235
    :cond_8
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_2
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .locals 29
    .parameter "parser"
    .parameter "notInsidePackageTag"
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 412
    .local v3, denyPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v8, allowPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v4, pkgPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 418
    .local v22, outerDepth:I
    const/16 v16, 0x0

    .line 419
    .local v16, allowAll:Z
    const/4 v5, 0x0

    .line 420
    .local v5, seinfo:Ljava/lang/String;
    const/4 v6, 0x0

    .line 422
    .local v6, isContainerApp:Z
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    .local v28, type:I
    const/4 v7, 0x1

    move/from16 v0, v28

    if-eq v0, v7, :cond_10

    const/4 v7, 0x3

    move/from16 v0, v28

    if-ne v0, v7, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move/from16 v0, v22

    if-le v7, v0, :cond_10

    .line 424
    :cond_1
    const/4 v7, 0x3

    move/from16 v0, v28

    if-eq v0, v7, :cond_0

    const/4 v7, 0x4

    move/from16 v0, v28

    if-eq v0, v7, :cond_0

    .line 429
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .line 430
    .local v27, tagName:Ljava/lang/String;
    const-string v7, "seinfo"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 431
    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 432
    .local v26, seinfoValue:Ljava/lang/String;
    if-eqz v26, :cond_3

    .line 433
    move-object/from16 v5, v26

    .line 511
    .end local v26           #seinfoValue:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 435
    .restart local v26       #seinfoValue:Ljava/lang/String;
    :cond_3
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<seinfo> without value at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    .end local v26           #seinfoValue:Ljava/lang/String;
    :cond_4
    const-string v7, "container"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 439
    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, containerflag:Ljava/lang/String;
    if-eqz v18, :cond_2

    const-string v7, "true"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 441
    const/4 v6, 0x1

    goto :goto_1

    .line 443
    .end local v18           #containerflag:Ljava/lang/String;
    :cond_5
    const-string v7, "allow-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 444
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 445
    .local v23, permName:Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 446
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_6
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<allow-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    .end local v23           #permName:Ljava/lang/String;
    :cond_7
    const-string v7, "deny-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 452
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 453
    .restart local v23       #permName:Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 454
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 456
    :cond_8
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<deny-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 459
    .end local v23           #permName:Ljava/lang/String;
    :cond_9
    const-string v7, "allow-all"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 460
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 461
    :cond_a
    const-string v7, "service"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 462
    new-instance v17, Landroid/content/pm/SELinuxMMAC$ContainerInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/content/pm/SELinuxMMAC$ContainerInfo;-><init>(Landroid/content/pm/SELinuxMMAC$1;)V

    .line 463
    .local v17, containerInfo:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 464
    .local v24, pkgName:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "level"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 465
    .local v21, level:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 466
    .local v20, innerSeinfo:Ljava/lang/String;
    if-eqz v24, :cond_2

    if-eqz v21, :cond_2

    .line 468
    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    iput v7, v0, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->level:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_2
    if-eqz v20, :cond_b

    .line 473
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 474
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 469
    :catch_0
    move-exception v19

    .line 470
    .local v19, e:Ljava/lang/NumberFormatException;
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not define correct level."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 475
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v5, :cond_2

    .line 476
    move-object/from16 v0, v17

    iput-object v5, v0, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 477
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 480
    .end local v17           #containerInfo:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    .end local v20           #innerSeinfo:Ljava/lang/String;
    .end local v21           #level:Ljava/lang/String;
    .end local v24           #pkgName:Ljava/lang/String;
    :cond_c
    const-string v7, "trustedpackage"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 481
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 483
    .restart local v24       #pkgName:Ljava/lang/String;
    if-eqz v24, :cond_2

    if-eqz p2, :cond_2

    .line 484
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " trusted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 487
    .end local v24           #pkgName:Ljava/lang/String;
    :cond_d
    const-string v7, "dontaudit"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 488
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 490
    .restart local v24       #pkgName:Ljava/lang/String;
    if-eqz v24, :cond_2

    if-eqz p2, :cond_2

    .line 491
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " noAudit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 494
    .end local v24           #pkgName:Ljava/lang/String;
    :cond_e
    const-string v7, "package"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    .line 495
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 496
    .restart local v24       #pkgName:Ljava/lang/String;
    if-eqz v24, :cond_f

    .line 497
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v25

    .line 498
    .local v25, policyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v25, :cond_0

    .line 499
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 507
    .end local v25           #policyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_f
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<package> inner tag without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 515
    .end local v24           #pkgName:Ljava/lang/String;
    .end local v27           #tagName:Ljava/lang/String;
    :cond_10
    const/4 v2, 0x0

    .line 516
    .local v2, permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_13

    .line 517
    new-instance v2, Landroid/content/pm/SELinuxMMAC$BlackListPolicy;

    .end local v2           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    new-instance v7, Ljava/util/ArrayList;

    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #allowPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v9, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 538
    .restart local v2       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_11
    :goto_3
    if-eqz v6, :cond_12

    if-eqz v2, :cond_12

    .line 539
    sput-object v2, Landroid/content/pm/SELinuxMMAC;->mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 542
    :cond_12
    return-object v2

    .line 520
    .restart local v8       #allowPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 521
    new-instance v2, Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;

    .end local v2           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    new-instance v12, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v2

    move-object v9, v4

    move-object v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3

    .line 524
    :cond_14
    if-eqz v16, :cond_15

    .line 525
    new-instance v2, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .end local v2           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3

    .line 528
    :cond_15
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    .line 533
    new-instance v2, Landroid/content/pm/SELinuxMMAC$DenyPolicy;

    .end local v2           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Landroid/content/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3
.end method

.method private static flushInstallPolicy()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 102
    return-void
.end method

.method public static getEnforcingMode()Z
    .locals 2

    .prologue
    .line 244
    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8
    .parameter "packageName"

    .prologue
    .line 115
    const/4 v2, -0x1

    .line 116
    .local v2, level:I
    if-eqz p0, :cond_0

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 118
    .local v0, dotIndex:I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 119
    .local v3, levelStartIndex:I
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, strLevel:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    .end local v0           #dotIndex:I
    .end local v3           #levelStartIndex:I
    .end local v4           #strLevel:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 122
    .restart local v0       #dotIndex:I
    .restart local v3       #levelStartIndex:I
    .restart local v4       #strLevel:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define level."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isKnoxKey([Landroid/content/pm/Signature;)Z
    .locals 6
    .parameter "cert"

    .prologue
    .line 137
    array-length v2, p0

    .line 138
    .local v2, len:I
    new-array v3, v2, [Ljava/lang/String;

    .line 140
    .local v3, pubkeys:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 141
    :try_start_0
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/security/cert/CertificateException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "isKnoxKey check causes CertificateException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    .line 147
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :goto_1
    return v4

    :cond_0
    invoke-static {v3}, Landroid/content/pm/SELinuxMMAC;->isKnoxKey([Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

.method public static isKnoxKey([Ljava/lang/String;)Z
    .locals 14
    .parameter "pubkeys"

    .prologue
    .line 151
    const/4 v8, 0x0

    .line 152
    .local v8, ret:Z
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 153
    .local v11, signatures:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/Signature;>;"
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    .line 154
    .local v7, pubkey:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 155
    .local v0, actualPublicKey:[B
    const/4 v3, 0x0

    .line 156
    .local v3, expectedPublicKey:[B
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    .line 158
    .local v10, signature:Landroid/content/pm/Signature;
    :try_start_0
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 163
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 164
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 165
    .local v9, sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    iget-object v12, v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    invoke-static {v12}, Landroid/content/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v9, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v12, :cond_2

    .line 167
    :cond_1
    const/4 v8, 0x1

    .line 153
    .end local v9           #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v10           #signature:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 159
    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    .restart local v10       #signature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "isKnoxKey check causes CertificateException"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v8, 0x0

    .line 173
    .end local v0           #actualPublicKey:[B
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .end local v3           #expectedPublicKey:[B
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #pubkey:Ljava/lang/String;
    .end local v8           #ret:Z
    .end local v10           #signature:Landroid/content/pm/Signature;
    :cond_3
    return v8
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "seInfo"

    .prologue
    .line 130
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static passInstallPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .parameter "pkg"

    .prologue
    const/4 v9, 0x0

    .line 727
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 728
    .local v5, s:Landroid/content/pm/Signature;
    if-nez v5, :cond_1

    .line 727
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_1
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 734
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 735
    .local v4, policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 736
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 740
    .local v6, seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    .line 774
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v5           #s:Landroid/content/pm/Signature;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 746
    :cond_3
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 747
    const/4 v3, 0x0

    .line 748
    .local v3, passed:Z
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 749
    .restart local v4       #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 750
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 754
    .restart local v6       #seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 760
    .end local v3           #passed:Z
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_4
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 761
    const/4 v3, 0x0

    .line 762
    .restart local v3       #passed:Z
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 763
    .restart local v4       #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 764
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 768
    .restart local v6       #seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 774
    .end local v3           #passed:Z
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static readInstallPolicy()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Landroid/content/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .locals 3
    .parameter "policyFile"

    .prologue
    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/content/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .locals 16
    .parameter "policyFiles"

    .prologue
    .line 267
    const/4 v8, 0x0

    .line 268
    .local v8, policyFile:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 269
    .local v3, i:I
    invoke-static {}, Landroid/content/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    .line 270
    .local v4, index:I
    packed-switch v4, :pswitch_data_0

    .line 295
    :goto_0
    if-nez v8, :cond_0

    .line 296
    const-string v13, "SELinuxMMAC"

    const-string v14, "MMAC install disabled."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v13, 0x0

    .line 403
    :goto_1
    return v13

    .line 277
    .end local v8           #policyFile:Ljava/io/FileReader;
    .local v9, policyFile:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 278
    .end local v9           #policyFile:Ljava/io/FileReader;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v8       #policyFile:Ljava/io/FileReader;
    :goto_2
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .line 272
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v9       #policyFile:Ljava/io/FileReader;
    :goto_3
    if-nez v9, :cond_a

    if-eqz p0, :cond_a

    aget-object v13, p0, v3

    if-eqz v13, :cond_a

    .line 274
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    aget-object v13, p0, v3

    invoke-direct {v8, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v9           #policyFile:Ljava/io/FileReader;
    .restart local v8       #policyFile:Ljava/io/FileReader;
    :try_start_1
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 277
    :catch_1
    move-exception v1

    goto :goto_2

    .line 287
    :pswitch_0
    :try_start_2
    new-instance v9, Ljava/io/FileReader;

    add-int/lit8 v13, v4, -0x1

    aget-object v13, p0, v13

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v9       #policyFile:Ljava/io/FileReader;
    :try_start_3
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v8, v9

    .line 289
    .end local v9           #policyFile:Ljava/io/FileReader;
    .restart local v8       #policyFile:Ljava/io/FileReader;
    goto :goto_0

    .line 290
    :catch_2
    move-exception v1

    .line 291
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :goto_4
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMAC install enabled using file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Landroid/content/pm/SELinuxMMAC;->getEnforcingMode()Z

    move-result v2

    .line 303
    .local v2, enforcing:Z
    if-eqz v2, :cond_2

    const-string v5, "enforcing"

    .line 304
    .local v5, mode:Ljava/lang/String;
    :goto_5
    const/4 v0, 0x0

    .line 305
    .local v0, cert:Ljava/lang/String;
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMAC install starting in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mode."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Landroid/content/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 310
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 311
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 313
    const-string v13, "policy"

    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 315
    :cond_1
    :goto_6
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 316
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 399
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_7
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 403
    :goto_8
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 303
    .end local v0           #cert:Ljava/lang/String;
    .end local v5           #mode:Ljava/lang/String;
    :cond_2
    const-string v5, "permissive"

    goto :goto_5

    .line 320
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v5       #mode:Ljava/lang/String;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, tagName:Ljava/lang/String;
    const-string v13, "signer"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 322
    const/4 v13, 0x0

    const-string v14, "signature"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-nez v0, :cond_4

    .line 324
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> without signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 393
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #tagName:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 394
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 331
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #tagName:Ljava/lang/String;
    :cond_4
    :try_start_7
    new-instance v10, Landroid/content/pm/Signature;

    invoke-direct {v10, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 338
    .local v10, signature:Landroid/content/pm/Signature;
    if-nez v10, :cond_5

    .line 339
    :try_start_8
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with null signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    .line 395
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #signature:Landroid/content/pm/Signature;
    .end local v11           #tagName:Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/IOException;
    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 332
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #tagName:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 333
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_9
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with bad signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 344
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #signature:Landroid/content/pm/Signature;
    :cond_5
    const/4 v13, 0x1

    invoke-static {v6, v13, v0}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 345
    .local v12, type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_1

    .line 361
    sget-object v13, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 363
    .end local v10           #signature:Landroid/content/pm/Signature;
    .end local v12           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_6
    const-string v13, "default"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 364
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 365
    .restart local v12       #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_1

    .line 370
    sget-object v13, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 372
    .end local v12           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_7
    const-string v13, "package"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 373
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, pkgName:Ljava/lang/String;
    if-nez v7, :cond_8

    .line 375
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<package> without name at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 380
    :cond_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 381
    .restart local v12       #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_1

    .line 386
    sget-object v13, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 389
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v12           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_9
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_6

    .line 400
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #tagName:Ljava/lang/String;
    :catch_6
    move-exception v13

    goto/16 :goto_8

    .line 290
    .end local v0           #cert:Ljava/lang/String;
    .end local v2           #enforcing:Z
    .end local v5           #mode:Ljava/lang/String;
    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v9       #policyFile:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9           #policyFile:Ljava/io/FileReader;
    .restart local v8       #policyFile:Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v9       #policyFile:Ljava/io/FileReader;
    :cond_a
    move-object v8, v9

    .end local v9           #policyFile:Ljava/io/FileReader;
    .restart local v8       #policyFile:Ljava/io/FileReader;
    goto/16 :goto_0

    :pswitch_1
    move-object v9, v8

    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v9       #policyFile:Ljava/io/FileReader;
    goto/16 :goto_3

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setEnforcingMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 252
    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 252
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2
    .parameter "pkg"
    .parameter "level"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "container"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 178
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Landroid/content/pm/SELinuxMMAC;->mContainerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    iget-object v1, v1, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->level:I

    .line 182
    return-void
.end method
