.class public Lcom/android/settings_ex/wifi/Hs20AccessPoint;
.super Landroid/preference/Preference;
.source "Hs20AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/Hs20AccessPoint$1;,
        Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

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

.field hessid:Ljava/lang/String;

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

.field operatorName:Ljava/lang/String;

.field pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->DBG:Z

    .line 44
    new-array v0, v2, [I

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->STATE_SECURED:[I

    .line 47
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/Hs20ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 229
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 75
    sget-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 85
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWState:I

    .line 86
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWErrorReason:I

    .line 230
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 231
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->loadResult(Landroid/net/wifi/Hs20ScanResult;)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 233
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 222
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 75
    sget-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 85
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWState:I

    .line 86
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWErrorReason:I

    .line 223
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 224
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 215
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 75
    sget-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 85
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWState:I

    .line 86
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWErrorReason:I

    .line 216
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 217
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 219
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 75
    sget-object v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 85
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWState:I

    .line 86
    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWErrorReason:I

    .line 237
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 239
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 243
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 247
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 248
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 252
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 519
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

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 200
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 201
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 202
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 203
    sget-object v2, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 210
    :goto_0
    return-object v2

    .line 204
    :cond_0
    if-eqz v1, :cond_1

    .line 205
    sget-object v2, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    sget-object v2, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 209
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v2, Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x3

    .line 122
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v0, 0x4

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v0, 0x5

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 97
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const/4 v0, 0x4

    goto :goto_0

    .line 108
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 109
    goto :goto_0

    .line 113
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v4

    .line 114
    goto :goto_0

    .line 117
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static getSecurity(Ljava/lang/String;)I
    .locals 4
    .parameter "securityType"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 141
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 148
    goto :goto_0
.end method

.method public static isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 682
    if-eqz p0, :cond_0

    .line 685
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, ssid:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 688
    .local v2, security:I
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVendorApInfo()[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    .line 689
    .local v0, aps:[Lcom/android/settings_ex/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 690
    const-string v5, "Settings.AccessPoint"

    const-string v6, "Do not exist vendor specific aps"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v0           #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    .end local v2           #security:I
    .end local v3           #ssid:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 694
    .restart local v0       #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    .restart local v2       #security:I
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 695
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/android/settings_ex/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/android/settings_ex/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 696
    const-string v4, "Settings.AccessPoint"

    const-string v5, "Selected Default AP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v4, 0x1

    goto :goto_0

    .line 694
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 264
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    .line 267
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    .line 268
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    .line 269
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->isHS20AP:I

    .line 270
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 272
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2
    return-void

    .line 264
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/Hs20ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    .line 305
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->hessid:Ljava/lang/String;

    .line 308
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->frequency:I

    .line 309
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    .line 310
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 311
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "HS20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 312
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    if-ne v0, v2, :cond_0

    .line 313
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 314
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    .line 315
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    .line 316
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 317
    iget-object v0, p1, Landroid/net/wifi/Hs20ScanResult;->operatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->operatorName:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 319
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    return-void

    .line 310
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    .line 284
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    .line 285
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 286
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->frequency:I

    .line 287
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    .line 288
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 289
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "HS20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 290
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    if-ne v0, v2, :cond_0

    .line 291
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 292
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    .line 293
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 296
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_2
    return-void

    .line 288
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f0902f2

    .line 524
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 526
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 528
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

    .line 529
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

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

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

    .line 537
    .end local v0           #color:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_4

    .line 538
    iget v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->isHS20AP:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v4}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090281

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    :goto_1
    return-void

    .line 530
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 531
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
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

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

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

    .line 534
    .end local v0           #color:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v3}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 544
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_5

    .line 545
    const v3, 0x7f0902f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 546
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_6

    .line 547
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 573
    :pswitch_0
    const v3, 0x7f0902f0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 550
    :pswitch_1
    const v3, 0x7f0902f5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 554
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 557
    :pswitch_3
    const v3, 0x7f0902ef

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 560
    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 563
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 566
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 569
    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 576
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    if-eqz v3, :cond_7

    .line 581
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->operatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 511
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

    .line 513
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 515
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 448
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 387
    instance-of v4, p1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 423
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 390
    check-cast v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    .line 392
    .local v1, other:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 396
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 397
    iget v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 400
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 401
    iget v4, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 404
    :cond_4
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    iget v2, v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 406
    .local v0, difference:I
    if-eqz v0, :cond_5

    move v2, v0

    .line 407
    goto :goto_0

    .line 423
    .end local v0           #difference:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getCWErrorReason()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWErrorReason:I

    return v0
.end method

.method getCWState()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mCWState:I

    return v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 476
    const/4 v0, -0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 4
    .parameter "concise"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    packed-switch v2, :pswitch_data_0

    .line 195
    if-eqz p1, :cond_8

    const-string v2, ""

    :goto_0
    return-object v2

    .line 156
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const v2, 0x7f090310

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, securityString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09031c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    .line 156
    .end local v1           #securityString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f09031b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 164
    .restart local v1       #securityString:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0902fd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 167
    goto :goto_0

    .line 170
    .end local v1           #securityString:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/wifi/Hs20AccessPoint$1;->$SwitchMap$com$android$settings$wifi$Hs20AccessPoint$PskType:[I

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 182
    if-eqz p1, :cond_6

    const v2, 0x7f09030f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 172
    :pswitch_2
    if-eqz p1, :cond_3

    const v2, 0x7f09030c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v2, 0x7f090317

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 175
    :pswitch_3
    if-eqz p1, :cond_4

    const v2, 0x7f09030d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f090318

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 178
    :pswitch_4
    if-eqz p1, :cond_5

    const v2, 0x7f09030e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f090319

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 182
    :cond_6
    const v2, 0x7f09031a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 186
    :pswitch_5
    if-eqz p1, :cond_7

    const v2, 0x7f09030b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f090316

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 190
    :pswitch_6
    const v2, 0x7f090321

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 192
    :pswitch_7
    const v2, 0x7f090322

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 195
    :cond_8
    const v2, 0x7f090315

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public isSupportedSecurityType()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 650
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :cond_0
    return v2
.end method

.method public isVendorAccessPoint()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 665
    invoke-static {}, Lcom/android/settings_ex/Utils;->getVendorApInfo()[Lcom/android/settings_ex/Utils$ApInfo;

    move-result-object v0

    .line 666
    .local v0, aps:[Lcom/android/settings_ex/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 667
    const-string v3, "Settings.AccessPoint"

    const-string v4, "Do not exist vendor specific aps"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0           #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    :cond_0
    :goto_0
    return v2

    .line 671
    .restart local v0       #aps:[Lcom/android/settings_ex/Utils$ApInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 672
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings_ex/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings_ex/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 673
    const-string v2, "Settings.AccessPoint"

    const-string v3, "Selected Default AP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, 0x1

    goto :goto_0

    .line 671
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 331
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 332
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 349
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 352
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f07009d

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 353
    .local v6, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v3, v6}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 354
    .local v1, csl:Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v6           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 365
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, signalStrength:[Ljava/lang/String;
    const v7, 0x7f0b02ff

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 369
    .local v4, signal:Landroid/widget/ImageView;
    iget v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_1

    .line 370
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :goto_1
    return-void

    .line 355
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #signal:Landroid/widget/ImageView;
    .end local v5           #signalStrength:[Ljava/lang/String;
    .restart local v3       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 356
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Settings.AccessPoint"

    const-string v8, "onBindView(), XmlResourceParser exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #signal:Landroid/widget/ImageView;
    .restart local v5       #signalStrength:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getLevel()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0902da

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getLevel()I

    move-result v8

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    const v7, 0x7f02051d

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget v7, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 255
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public update(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .parameter "wifiInfo"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 457
    .local v0, reorder:Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 458
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 463
    :cond_0
    return-void

    .line 456
    .end local v0           #reorder:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    xor-int v0, v3, v1

    .line 466
    .local v0, reorder:Z
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 467
    iput-object p2, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 468
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 472
    :cond_0
    return-void

    .end local v0           #reorder:Z
    :cond_1
    move v3, v2

    .line 465
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 428
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getLevel()I

    move-result v0

    .line 430
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mRssi:I

    .line 431
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 435
    .end local v0           #oldLevel:I
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "HS20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 437
    iget v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 438
    invoke-static {p1}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings_ex/wifi/Hs20AccessPoint$PskType;

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->refresh()V

    .line 441
    const/4 v1, 0x1

    .line 443
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
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 488
    return-void
.end method
