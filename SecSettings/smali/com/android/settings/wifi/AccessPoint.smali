.class public Lcom/android/settings_ex/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPoint$1;,
        Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field static final DEFAULT_ORDER:I = 0x7fffffff

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"


# instance fields
.field Hotspot20Available:Z

.field bssid:Ljava/lang/String;

.field frequency:I

.field private isHS20AP:I

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCWErrorReason:I

.field private mCWState:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mSignal:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field networkId:I

.field order:I

.field pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field secFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/AccessPoint;->DBG:Z

    .line 61
    new-array v0, v2, [I

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    .line 64
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 277
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    .line 93
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->Hotspot20Available:Z

    .line 95
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 105
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    .line 106
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    .line 278
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 279
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 281
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 270
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    .line 93
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->Hotspot20Available:Z

    .line 95
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 105
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    .line 106
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    .line 271
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 272
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 274
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 284
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    .line 93
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->Hotspot20Available:Z

    .line 95
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 105
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    .line 106
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    .line 285
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 287
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 291
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 295
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 296
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 300
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    .locals 6
    .parameter "result"

    .prologue
    .line 250
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 251
    .local v1, wpa:Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA2-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 252
    .local v2, wpa2:Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "FT/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 253
    .local v0, ft:Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 254
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 265
    :goto_0
    return-object v3

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 256
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 257
    :cond_1
    if-eqz v2, :cond_2

    .line 258
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 259
    :cond_2
    if-eqz v1, :cond_3

    .line 260
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 261
    :cond_3
    if-eqz v0, :cond_4

    .line 262
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->FT:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 264
    :cond_4
    const-string v3, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x4

    .line 159
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x5

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 159
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .parameter "config"

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v0, v4

    .line 138
    :cond_1
    :goto_0
    return v0

    .line 124
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v3

    .line 128
    goto :goto_0

    .line 131
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    const/4 v0, 0x4

    goto :goto_0

    .line 134
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static getSecurity(Ljava/lang/String;)I
    .locals 1
    .parameter "securityType"

    .prologue
    .line 164
    const-string v0, "WAPI-PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x4

    .line 178
    :goto_0
    return v0

    .line 166
    :cond_0
    const-string v0, "WAPI-CERT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x5

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IEEE8021X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FT/EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CCKM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "FT/PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 175
    :cond_5
    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalCompareTo(Landroid/preference/Preference;Z)I
    .locals 6
    .parameter "preference"
    .parameter "ignoreOrder"

    .prologue
    const/4 v2, 0x1

    const v5, 0x7fffffff

    const/4 v3, -0x1

    .line 449
    instance-of v4, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 452
    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 454
    .local v1, other:Lcom/android/settings_ex/wifi/AccessPoint;
    if-nez p2, :cond_3

    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    if-ne v4, v5, :cond_2

    iget v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    if-eq v4, v5, :cond_3

    .line 455
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    iget v5, v1, Lcom/android/settings_ex/wifi/AccessPoint;->order:I

    if-gt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 458
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_4

    move v2, v3

    goto :goto_0

    .line 459
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    .line 462
    :cond_5
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-eq v4, v5, :cond_6

    iget v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_6

    move v2, v3

    goto :goto_0

    .line 463
    :cond_6
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_7

    iget v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v4, v5, :cond_0

    .line 466
    :cond_7
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v4, v3, :cond_8

    iget v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_8

    move v2, v3

    .line 467
    goto :goto_0

    .line 468
    :cond_8
    iget v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_9

    iget v4, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_0

    .line 472
    :cond_9
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 473
    iget v2, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 474
    .local v0, difference:I
    if-eqz v0, :cond_a

    move v2, v0

    .line 475
    goto :goto_0

    .line 491
    .end local v0           #difference:I
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 492
    iget v2, v1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 494
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 830
    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 833
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, ssid:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 836
    .local v2, security:I
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVendorApInfo()[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    .line 837
    .local v0, aps:[Lcom/android/settings_ex/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 838
    const-string v5, "Settings.AccessPoint"

    const-string v6, "Do not exist vendor specific aps"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v0           #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    .end local v2           #security:I
    .end local v3           #ssid:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 842
    .restart local v0       #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    .restart local v2       #security:I
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 843
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/settings_ex/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 844
    const-string v6, ""

    const-string v7, "KTT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 845
    goto :goto_0

    .line 848
    :cond_2
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/settings_ex/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 849
    const-string v4, "Settings.AccessPoint"

    const-string v6, "Selected Default AP"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 850
    goto :goto_0

    .line 842
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 314
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 315
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 316
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 317
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isHS20AP:I

    .line 318
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 320
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig: config.allowedKeyManagement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    .line 338
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_6
    return-void

    .line 312
    :cond_7
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 349
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 350
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    .line 351
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 352
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 353
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "HS20"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->Hotspot20Available:Z

    .line 354
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-ne v0, v4, :cond_0

    .line 355
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 356
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 357
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 358
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 360
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "-EAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/EAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "CCKM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    .line 374
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "SEC80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-boolean v0, Lcom/android/settings_ex/wifi/AccessPoint;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "Settings.AccessPoint"

    const-string v1, "Detect SamsungFlag.SEC_MOBILE_AP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SEC21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-boolean v0, Lcom/android/settings_ex/wifi/AccessPoint;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "Settings.AccessPoint"

    const-string v1, "Detect SamsungFlag.SKIP_INTERNET_SERVICE_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 352
    goto/16 :goto_0
.end method

.method private refresh()V
    .locals 9

    .prologue
    const v8, 0x7f0902ef

    const/4 v7, 0x1

    const v6, 0x7f0902f0

    .line 647
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 649
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 652
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    .end local v0           #color:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_4

    .line 673
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isHS20AP:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    .line 675
    const v3, 0x7f090281

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v6}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 760
    :goto_1
    return-void

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 655
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .restart local v0       #color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 658
    .end local v0           #color:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 677
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v3}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 679
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_5

    .line 680
    const v3, 0x7f0902f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 681
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_6

    .line 682
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 711
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 685
    :pswitch_1
    const v3, 0x7f0902f5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 688
    :pswitch_2
    const v3, 0x7f0902f1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 692
    :pswitch_3
    const v3, 0x7f0902f2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 695
    :pswitch_4
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 698
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 701
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 704
    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 707
    :pswitch_8
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 714
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_7

    .line 716
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_7
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_c

    .line 721
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 722
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 725
    const v3, 0x7f0902fb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_a

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0902fe

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 727
    :cond_b
    const v3, 0x7f0902fd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 743
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 744
    const v3, 0x7f0902fc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 634
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 636
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 638
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 1
    .parameter "preference"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->internalCompareTo(Landroid/preference/Preference;Z)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    instance-of v2, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 500
    .end local p1
    :goto_0
    return v1

    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p1
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->internalCompareTo(Landroid/preference/Preference;Z)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 768
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 773
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getCWErrorReason()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    return v0
.end method

.method getCWState()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    return v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 598
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 599
    const/4 v0, -0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 9
    .parameter "concise"

    .prologue
    const v8, 0x7f09031c

    const v7, 0x7f090314

    const/16 v6, 0x9

    const/4 v5, 0x7

    const v4, 0x7f0902fd

    .line 182
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    packed-switch v2, :pswitch_data_0

    .line 245
    if-eqz p1, :cond_e

    const-string v2, ""

    :goto_0
    return-object v2

    .line 185
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const v2, 0x7f090310

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, securityString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 185
    .end local v1           #securityString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f09031b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 194
    .restart local v1       #securityString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 201
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 208
    :cond_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    .line 211
    goto/16 :goto_0

    .line 214
    .end local v1           #securityString:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 232
    if-eqz p1, :cond_c

    const v2, 0x7f09030f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 216
    :pswitch_2
    if-eqz p1, :cond_7

    const v2, 0x7f09030c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f090317

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 219
    :pswitch_3
    if-eqz p1, :cond_8

    const v2, 0x7f09030d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f090318

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 222
    :pswitch_4
    if-eqz p1, :cond_9

    const v2, 0x7f09030e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f090319

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 225
    :pswitch_5
    if-eqz p1, :cond_a

    const v2, 0x7f090312

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f09031d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 228
    :pswitch_6
    if-eqz p1, :cond_b

    const v2, 0x7f090313

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f09031e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 232
    :cond_c
    const v2, 0x7f09031a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 236
    :pswitch_7
    if-eqz p1, :cond_d

    const v2, 0x7f09030b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f090316

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 240
    :pswitch_8
    const v2, 0x7f090321

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 242
    :pswitch_9
    const v2, 0x7f090322

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 245
    :cond_e
    const v2, 0x7f090315

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 214
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, result:I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 507
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 508
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 510
    return v0
.end method

.method public isSupportedSecurityType()Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 780
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 805
    :cond_1
    :goto_0
    return v0

    .line 784
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 794
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 799
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    move v0, v1

    .line 805
    goto :goto_0
.end method

.method public isVendorAccessPoint()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 810
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 813
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVendorApInfo()[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    .line 814
    .local v0, aps:[Lcom/android/settings_ex/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 815
    const-string v3, "Settings.AccessPoint"

    const-string v4, "Do not exist vendor specific aps"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v0           #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    :cond_0
    :goto_0
    return v2

    .line 819
    .restart local v0       #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 820
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings_ex/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings_ex/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 821
    const-string v2, "Settings.AccessPoint"

    const-string v3, "Selected Default AP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v2, 0x1

    goto :goto_0

    .line 819
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 389
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 390
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 407
    iget-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 410
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f07009d

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 411
    .local v6, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v3, v6}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 412
    .local v1, csl:Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v6           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 423
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, signalStrength:[Ljava/lang/String;
    const v7, 0x7f0b02ff

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 427
    .local v4, signal:Landroid/widget/ImageView;
    iget v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_1

    .line 428
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    :goto_1
    return-void

    .line 413
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #signal:Landroid/widget/ImageView;
    .end local v5           #signalStrength:[Ljava/lang/String;
    .restart local v3       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 414
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Settings.AccessPoint"

    const-string v8, "onBindView(), XmlResourceParser exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #signal:Landroid/widget/ImageView;
    .restart local v5       #signalStrength:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0902da

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v8

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    const v7, 0x7f02051d

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget v7, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 303
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, reorder:Z
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 547
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 550
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 551
    .local v0, newRssi:I
    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    .line 552
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 554
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 555
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 556
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 567
    .end local v0           #newRssi:I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 568
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 570
    :cond_3
    return-void

    .line 547
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 557
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    .line 558
    const/4 v1, 0x1

    .line 559
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 560
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 565
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;II)V
    .locals 5
    .parameter "info"
    .parameter "state"
    .parameter "CwState"
    .parameter "nCwErrorReason"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 577
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 578
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 579
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 580
    iput p3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    .line 581
    iput p4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    .line 582
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 591
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 594
    :cond_1
    return-void

    .line 576
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 585
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 586
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 587
    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWState:I

    .line 588
    iput v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mCWErrorReason:I

    .line 589
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 515
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 517
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 519
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 522
    .end local v0           #oldLevel:I
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "HS20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->Hotspot20Available:Z

    .line 524
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 525
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 528
    const/4 v1, 0x1

    .line 530
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 611
    return-void
.end method
