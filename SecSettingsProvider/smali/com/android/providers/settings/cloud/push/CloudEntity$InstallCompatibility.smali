.class public final Lcom/android/providers/settings/cloud/push/CloudEntity$InstallCompatibility;
.super Ljava/lang/Object;
.source "CloudEntity.java"

# interfaces
.implements Lcom/android/providers/settings/cloud/push/CloudEntity$CloudColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/cloud/push/CloudEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallCompatibility"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "content://com.android.providers.settings.cloud.compatibility.install/install"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/cloud/push/CloudEntity$InstallCompatibility;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method
