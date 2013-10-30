.class public final Lcom/nuance/id/NuanceId;
.super Ljava/lang/Object;
.source "NuanceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/id/NuanceId$HashingFunction;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:I = 0xf

.field public static final INCLUDE_ANDROIDID:I = 0x8

.field public static final INCLUDE_IMEI:I = 0x1

.field public static final INCLUDE_MAC:I = 0x4

.field public static final INCLUDE_SERIAL:I = 0x2

.field public static final NULL_ANDROIDID:Ljava/lang/String; = "00000000000000000"

.field public static final NULL_HASH:Ljava/lang/String; = "00000000000000000000000000000000000000000000000000000000000000000"

.field public static final NULL_IMEI:Ljava/lang/String; = "00000000000000000"

.field public static final NULL_MAC_ADDRESS:Ljava/lang/String; = "000000000000"

.field public static final NULL_SERIAL:Ljava/lang/String; = "0000000000000000000000"


# instance fields
.field private context:Landroid/content/Context;

.field private hashingInternal:Lcom/nuance/id/NuanceIdImpl;

.field private id:Ljava/lang/String;

.field private idsUsed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "idsUsed"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/nuance/id/NuanceIdImpl;

    invoke-direct {v0}, Lcom/nuance/id/NuanceIdImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    .line 95
    iput p2, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    .line 96
    if-nez p2, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must include at least one device IDs to generate NuanceID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prop"

    .prologue
    .line 118
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    const-class v2, Landroid/os/Build;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isIdIncluded(I)Z
    .locals 1
    .parameter "mask"

    .prologue
    .line 202
    iget v0, p0, Lcom/nuance/id/NuanceId;->idsUsed:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkPermission(Ljava/lang/String;)Z
    .locals 2
    .parameter "permission"

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 105
    :cond_0
    return v0
.end method

.method protected getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    if-nez v0, :cond_1

    .line 195
    const-string v0, "00000000000000000"

    .line 197
    :cond_1
    return-object v0
.end method

.method public getAndroidIdHash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 247
    .local v0, hash_len:I
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x3

    iget-object v3, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/id/NuanceIdImpl;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, imeiDeviceId:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 137
    .local v1, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 139
    .end local v1           #manager:Landroid/telephony/TelephonyManager;
    :cond_0
    if-nez v0, :cond_1

    .line 140
    const-string v0, "00000000000000000"

    .line 142
    :cond_1
    return-object v0
.end method

.method public getIMEIHash()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 232
    .local v0, hash_len:I
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/id/NuanceId;->hashingInternal:Lcom/nuance/id/NuanceIdImpl;

    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/id/NuanceIdImpl;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, macAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v3}, Lcom/nuance/id/NuanceId;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/nuance/id/NuanceId;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 170
    .local v2, manager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 172
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #manager:Landroid/net/wifi/WifiManager;
    :cond_0
    if-nez v1, :cond_1

    .line 181
    const-string v1, "000000000000"

    .line 183
    :cond_1
    return-object v1
.end method

.method public getMacHash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 242
    .local v0, hash_len:I
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, serial:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/nuance/id/NuanceId;->isIdIncluded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "SERIAL"

    invoke-static {v1}, Lcom/nuance/id/NuanceId;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    :cond_0
    if-nez v0, :cond_1

    .line 155
    const-string v0, "0000000000000000000000"

    .line 157
    :cond_1
    return-object v0
.end method

.method public getSerialHash()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/nuance/id/NuanceId;->getId()Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 237
    .local v0, hash_len:I
    iget-object v1, p0, Lcom/nuance/id/NuanceId;->id:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
