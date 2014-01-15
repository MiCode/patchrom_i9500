.class public Lcom/android/settings_ex/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final MAX_CLIENT:I = 0x0

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x3f

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field public static final OPEN_INDEX:I = 0x0

.field private static final SHARED_HIDESSIDDONOTSHOWAGAIN:Ljava/lang/String; = "HIDE_SSID_DO_NOTSHOW_AGAIN"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "SAMSUNG_HOTSPOT"

.field private static final SHARED_TIMEOUT:Ljava/lang/String; = "CONNECTION_TIMEOUT"

.field private static final SHARED_WIFIAP5GDONOTSHOWAGAIN:Ljava/lang/String; = "WIFI_AP_5G_DO_NOTSHOW_AGAIN"

.field private static final TAG:Ljava/lang/String; = "WifiApDialog"

.field public static final WPA2_INDEX:I = 0x2

.field public static final WPA_INDEX:I = 0x1

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private chselected:Z

.field private customView:Landroid/view/View;

.field private hideSsidDoNotShowAgain:Z

.field private isShowPassword:Z

.field private isTimeoutValueChanged:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mChannel5genabled:Z

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field private mWifiAp5gDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/wifi/WifiApDialog;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    const v0, 0x7f100032

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 98
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 102
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 117
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 123
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    .line 124
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    .line 125
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    .line 126
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 132
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5genabled:Z

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 136
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCharger:I

    .line 139
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 146
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 147
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isShowPassword:Z

    .line 155
    const-string v0, "ro.wifi.mobileap.chselected"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "149"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->chselected:Z

    .line 328
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 675
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 161
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 163
    if-eqz p3, :cond_0

    .line 164
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 166
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    .line 167
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 178
    :cond_0
    return-void

    .line 170
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"
    .parameter "tempWifiConfig"
    .parameter "permitDismiss"
    .parameter "continueOpen"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    const v0, 0x7f100032

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 98
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 102
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 117
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 123
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    .line 124
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    .line 125
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    .line 126
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 132
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5genabled:Z

    .line 135
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 136
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 138
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCharger:I

    .line 139
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 146
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 147
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isShowPassword:Z

    .line 155
    const-string v0, "ro.wifi.mobileap.chselected"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "149"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->chselected:Z

    .line 328
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 675
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 184
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    if-eqz p4, :cond_2

    .line 186
    iput-object p4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 192
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDialog2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   continueOpen ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 195
    if-eqz p6, :cond_3

    .line 196
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 202
    :cond_0
    :goto_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    .line 203
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    .line 204
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 214
    :cond_1
    return-void

    .line 188
    :cond_2
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 197
    :cond_3
    if-nez p6, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 198
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mDismissIfOpen:Z

    goto :goto_1

    .line 206
    :cond_4
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings_ex/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/wifi/WifiApDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/WifiApDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiAp5gDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings_ex/wifi/WifiApDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiAp5gDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 8

    .prologue
    .line 1022
    const-string v0, "/sys/class/sec/switch/chg_type"

    .line 1023
    .local v0, CHG_TYPE_FILE:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1024
    .local v1, buf:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1026
    .local v3, bufReadLine:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1027
    .end local v1           #buf:Ljava/io/BufferedReader;
    .local v2, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1028
    const-string v5, "WifiApDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1033
    if-eqz v2, :cond_0

    .line 1034
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 1040
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1041
    :cond_2
    const/4 v5, 0x1

    .line 1043
    :goto_1
    return v5

    .line 1035
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1036
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1038
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1029
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1030
    .restart local v4       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1033
    if-eqz v1, :cond_1

    .line 1034
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1035
    :catch_2
    move-exception v4

    .line 1036
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1032
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1033
    :goto_3
    if-eqz v1, :cond_3

    .line 1034
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1037
    :cond_3
    :goto_4
    throw v5

    .line 1035
    :catch_3
    move-exception v4

    .line 1036
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1043
    .end local v4           #e:Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1032
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1029
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1062
    sparse-switch p1, :sswitch_data_0

    .line 1076
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1064
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1066
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1070
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1072
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1074
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1062
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 1080
    packed-switch p1, :pswitch_data_0

    .line 1094
    :goto_0
    :pswitch_0
    return v0

    .line 1082
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1084
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1086
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1090
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1092
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1080
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1056
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1057
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 950
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 953
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 954
    :cond_2
    if-eqz v0, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 963
    if-eqz p1, :cond_0

    .line 964
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 965
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 969
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private saveTempConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 277
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 283
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 284
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 295
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 318
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 319
    return-void

    .line 297
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 302
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 310
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 311
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTimeout(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_HOTSPOT"

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1051
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1053
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b0424

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 859
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 860
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 866
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 874
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0425

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 884
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 886
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 879
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 701
    const/4 v3, 0x0

    .line 702
    .local v3, trimedSsidLength:I
    const/4 v2, 0x0

    .line 703
    .local v2, trimedPasswordLength:I
    const/4 v1, 0x1

    .line 705
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 706
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 708
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 709
    :cond_0
    const/4 v1, 0x0

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    .line 714
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 717
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_4

    :cond_3
    if-eqz v2, :cond_6

    :cond_4
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_7

    .line 719
    :cond_6
    const/4 v1, 0x0

    .line 722
    :cond_7
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 723
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_8

    .line 724
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 726
    :cond_8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 796
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 792
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 898
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 899
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 235
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 241
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 242
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 247
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 270
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 249
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 254
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 262
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 263
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 632
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 648
    :cond_2
    :goto_0
    return-void

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 786
    .end local p1
    :goto_0
    :pswitch_0
    return-void

    .line 732
    .restart local p1
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x90

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 737
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 739
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 732
    .end local v2           #password:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x80

    goto :goto_1

    .line 742
    .restart local p1
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0427

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 760
    .restart local p1
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 768
    .local v0, is2gChecked:Z
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    move v5, v3

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 769
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 770
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_2

    move v3, v6

    :cond_2
    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 768
    goto :goto_3

    :cond_4
    move v4, v3

    .line 769
    goto :goto_4

    .line 773
    .end local v0           #is2gChecked:Z
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 781
    .local v1, is5gChecked:Z
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    move v5, v4

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 782
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 783
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v1, :cond_7

    :goto_6
    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v5, v3

    .line 781
    goto :goto_5

    :cond_7
    move v6, v3

    .line 783
    goto :goto_6

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0421
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0b0425

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040161

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 382
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0422

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 384
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 385
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 388
    .local v1, context:Landroid/content/Context;
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 391
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0238

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0420

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 394
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b03de

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 395
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0421

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 399
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 400
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v7, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0426

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 404
    .local v0, advanced:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 405
    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b042a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 408
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0428

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0429

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b042b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    .line 484
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 488
    const/4 v4, -0x1

    const v7, 0x7f0903e3

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 489
    const/4 v4, -0x2

    const v7, 0x7f0903e4

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 492
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_1

    .line 493
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v7, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 495
    const v4, 0x7f0903cc

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    .line 500
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v7, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 509
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 510
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 512
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v7, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 513
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 523
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 524
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 526
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 529
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 530
    .local v3, defaultValue:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "USC"

    sget-object v7, Lcom/android/settings_ex/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 532
    :cond_2
    const/4 v3, 0x1

    .line 534
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v7, "wifi_ap_show_passwd"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    :goto_2
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 538
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 540
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b042d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    .line 590
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b042c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 594
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b042f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 599
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b042e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 603
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 605
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 608
    return-void

    .line 497
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #defaultValue:I
    :cond_4
    const v4, 0x7f090471

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 515
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #defaultValue:I
    :cond_6
    move v5, v6

    .line 534
    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 802
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/wifi/WifiApDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$4;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 852
    :cond_0
    return-void

    .line 804
    :sswitch_0
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 805
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 814
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 823
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 824
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 827
    :sswitch_1
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast2gChannel:I

    .line 828
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 831
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    .line 833
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedChannel:I

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0

    .line 837
    :sswitch_3
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_0

    .line 840
    :sswitch_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 841
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 842
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTimeout(I)V

    goto :goto_0

    .line 802
    :sswitch_data_0
    .sparse-switch
        0x7f0b0422 -> :sswitch_0
        0x7f0b042a -> :sswitch_1
        0x7f0b042b -> :sswitch_2
        0x7f0b042d -> :sswitch_3
        0x7f0b042f -> :sswitch_4
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 789
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b0425

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 916
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 918
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0422

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 919
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 921
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 922
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 923
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 930
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 926
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 927
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 928
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isShowPassword:Z

    .line 912
    return-void
.end method

.method public setOpenWarningFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 935
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 936
    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 903
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 612
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 619
    :cond_0
    return-void
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    .prologue
    .line 973
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 974
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040165

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;

    .line 975
    const v1, 0x7f0903c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 976
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 977
    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/wifi/WifiApDialog$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$5;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 990
    new-instance v1, Lcom/android/settings_ex/wifi/WifiApDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$6;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 996
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 997
    return-void
.end method

.method public showWifiAP5gWarningDialog()V
    .locals 4

    .prologue
    .line 1000
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1001
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04015b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;

    .line 1002
    const v1, 0x7f0903b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1003
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1004
    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/wifi/WifiApDialog$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiApDialog$7;-><init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1018
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1019
    return-void
.end method
