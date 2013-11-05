.class public final Lcom/android/providers/settings/cloud/Constants$CloudAppControlList;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/cloud/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudAppControlList"
.end annotation


# static fields
.field public static final URI_CLOUD_APP_CONTROL_LIST:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1302
    const-string v0, "content://com.android.providers.settings.cloud.CloudSettings/cloud_app_control_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/cloud/Constants$CloudAppControlList;->URI_CLOUD_APP_CONTROL_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
