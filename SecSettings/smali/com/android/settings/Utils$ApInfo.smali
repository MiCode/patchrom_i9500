.class public Lcom/android/settings_ex/Utils$ApInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 1322
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/settings_ex/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 1323
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"
    .parameter "secure"

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object p1, p0, Lcom/android/settings_ex/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 1327
    iput-object p2, p0, Lcom/android/settings_ex/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 1328
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/settings_ex/Utils$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/settings_ex/Utils$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
