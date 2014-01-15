.class Lcom/android/settings_ex/wifi/WifiNewDialog;
.super Landroid/app/AlertDialog;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_CANCELNW:I = -0x2

.field static final BUTTON_CONNECT:I = -0x1

.field static final BUTTON_CONNECTED_EDIT:I = -0x3

.field static final BUTTON_EDIT:I = -0x2

.field static final BUTTON_EDITNW:I = -0x1

.field static final BUTTON_FORGET:I = -0x1

.field static final BUTTON_FORGETNW:I = -0x2

.field static final BUTTON_MANAGE_CONNECT:I = -0x1

.field static final BUTTON_MANAGE_EDIT:I = -0x3

.field static final BUTTON_MANAGE_REMOVE:I = -0x2

.field static final BUTTON_SUBMIT:I = -0x3

.field static final BUTTON_VIEW:I = -0x3

.field public static ConnectedCorrectPassword:Ljava/lang/String; = null

.field public static ConnectedPassword:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DHCP:I = 0x0

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x40

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final PHASE2_PREFIX:Ljava/lang/String; = "auth="

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field public static Remembered:I = 0x0

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiNewDialog"

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x3

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->DBG:Z

    .line 156
    const-string v0, " "

    sput-object v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 158
    const-string v0, " "

    sput-object v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 219
    const v1, 0x7f100032

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 172
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 173
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 882
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 916
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 220
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    .line 221
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->manageNetwork:Z

    .line 223
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 225
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 227
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 228
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 227
    :cond_0
    iget v0, p3, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 234
    const v1, 0x7f100032

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 172
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 173
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 882
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 916
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 235
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    .line 236
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->manageNetwork:Z

    .line 238
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 239
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 240
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 241
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 242
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 241
    :cond_0
    iget v0, p3, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZZ)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"
    .parameter "manage"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 247
    const v1, 0x7f100032

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 172
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 173
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 181
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 882
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 916
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 248
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    .line 249
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    .line 250
    iput-boolean p6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->manageNetwork:Z

    .line 251
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 253
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 255
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 256
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )   manage  ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 255
    :cond_0
    iget v0, p3, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiNewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040170

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 533
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 534
    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 721
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 722
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 726
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 727
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiNewDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 728
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 756
    .end local v6           #result:I
    :goto_1
    return v7

    .line 722
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 733
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 737
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 738
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 742
    .local v3, port:I
    const/4 v6, 0x0

    .line 744
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 745
    invoke-static {v2, v4, v1}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 749
    :goto_3
    if-nez v6, :cond_4

    .line 750
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 756
    goto :goto_1

    .line 733
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 746
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f090101

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 753
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 13
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1326
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1327
    .local v4, context:Landroid/content/Context;
    const v9, 0x7f0902ee

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1329
    .local v8, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, certs:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v9, v3

    if-nez v9, :cond_1

    .line 1331
    :cond_0
    new-array v3, v12, [Ljava/lang/String;

    .end local v3           #certs:[Ljava/lang/String;
    aput-object v8, v3, v11

    .line 1354
    .restart local v3       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    invoke-direct {v0, v4, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1356
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1357
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1358
    return-void

    .line 1334
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    const-string v9, "USRPKEY_"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v2, aux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    const-string v10, "USRCERT_"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1337
    .local v6, installedCerts:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v3

    if-ge v5, v9, :cond_4

    .line 1338
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    array-length v9, v6

    if-ge v7, v9, :cond_3

    .line 1339
    aget-object v9, v3, v5

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1340
    aget-object v9, v3, v5

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1337
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1345
    .end local v7           #j:I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #certs:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 1348
    .end local v2           #aux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v6           #installedCerts:[Ljava/lang/String;
    .restart local v3       #certs:[Ljava/lang/String;
    :cond_5
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 1349
    .local v1, array:[Ljava/lang/String;
    aput-object v8, v1, v11

    .line 1350
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1351
    move-object v3, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    if-nez p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v5

    .line 204
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 205
    goto :goto_0

    .line 208
    :cond_2
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 209
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 210
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 211
    goto :goto_0

    .line 209
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1362
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1365
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1368
    if-eqz p2, :cond_0

    .line 1370
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1371
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1372
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1378
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1371
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 13

    .prologue
    const v12, 0x7f0b0461

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b045f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v8, v11, :cond_0

    .line 1216
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1219
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1220
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v8, :cond_1

    .line 1222
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0462

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    .line 1223
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1224
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0463

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    .line 1225
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1226
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0464

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1228
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1229
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0465

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    .line 1230
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1231
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0466

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    .line 1232
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1234
    :cond_1
    if-eqz v0, :cond_6

    .line 1235
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1236
    .local v6, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1237
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1239
    .local v5, linkAddress:Landroid/net/LinkAddress;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    .end local v5           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 1245
    .local v7, route:Landroid/net/RouteInfo;
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1246
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    .end local v7           #route:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1252
    .local v2, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const-string v1, ""

    .line 1253
    .local v1, dns:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1255
    const-string v8, "::"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1256
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1262
    const-string v8, "::"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1263
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1277
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1278
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    .line 1279
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1280
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1281
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1282
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1283
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1287
    :cond_7
    return-void

    .line 1258
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1265
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1269
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_a
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const v6, 0x7f0b047b

    const/4 v5, 0x0

    const v4, 0x7f0b047d

    const/16 v3, 0x8

    .line 1152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1153
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v7, :cond_2

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b047c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v7, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    :cond_1
    :goto_1
    return-void

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1170
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1173
    :cond_4
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1177
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b047c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v7, :cond_7

    .line 1195
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 1201
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1179
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1205
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f0b045b

    const v6, 0x7f0b045a

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1290
    const/4 v0, 0x0

    .line 1292
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0457

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1298
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 1302
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b045c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1303
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1304
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b045d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1305
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1306
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b045e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1307
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1309
    :cond_1
    if-eqz v0, :cond_2

    .line 1310
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 1311
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_2

    .line 1312
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 1318
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 990
    :cond_0
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-nez v8, :cond_3

    .line 991
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b044b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 993
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 994
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v8, :cond_2

    .line 995
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 996
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 997
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 998
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1000
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 1149
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return-void

    .line 1004
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v8, :cond_4

    .line 1005
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1006
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1007
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_4

    .line 1008
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1012
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b044b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v8, :cond_5

    .line 1015
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b03de

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    .line 1016
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1017
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0425

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0425

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1020
    .local v4, mGetPasswordHidden:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1021
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1022
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1031
    .end local v4           #mGetPasswordHidden:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_5
    :goto_1
    iget v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    .line 1032
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0450

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0471

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1034
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0472

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1024
    .restart local v4       #mGetPasswordHidden:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1037
    .end local v4           #mGetPasswordHidden:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0450

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v8, :cond_9

    .line 1040
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0451

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1041
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string v8, "PEAP"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    const-string v8, "TLS"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    const-string v8, "TTLS"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    const-string v8, "PWD"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string v8, "SIM"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    const-string v8, "AKA"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    const-string v8, "FAST"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v8, "LEAP"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1090008

    invoke-direct {v0, v8, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1057
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1058
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1059
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1061
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0469

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1062
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0452

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1063
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0453

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1064
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0454

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1065
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0455

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 1066
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0456

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1068
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v9, "CACERT_"

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1069
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v9, "USRPKEY_"

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1071
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    .line 1072
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1073
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1075
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, phase1Value:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1077
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v9, "fast_provisioning="

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1080
    :cond_8
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    .line 1081
    .local v6, phase2Method:Ljava/lang/String;
    if-eqz v6, :cond_b

    const-string v8, "auth="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1082
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v9, "auth="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1088
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v9, "keystore://CACERT_"

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v9, "USRPKEY_"

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #phase1Value:Ljava/lang/String;
    .end local v6           #phase2Method:Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1105
    const-string v8, "WifiPolicy"

    const-string v9, "Enterprise Wifi settings not editable"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1107
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1108
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1109
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1114
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0467

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1118
    .local v7, spinnerValue:Ljava/lang/String;
    const-string v8, "AKA"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "SIM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1119
    :cond_a
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0468

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1120
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1121
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1122
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1123
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1124
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1125
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0471

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0472

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1136
    :goto_4
    const-string v8, "FAST"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1137
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0468

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1139
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1143
    :goto_5
    const-string v8, "PWD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1144
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1084
    .end local v7           #spinnerValue:Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v5       #phase1Value:Ljava/lang/String;
    .restart local v6       #phase2Method:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v8, v6}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1096
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #phase1Value:Ljava/lang/String;
    .end local v6           #phase2Method:Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v9, "1"

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1097
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v9, "MSCHAPV2"

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1128
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v7       #spinnerValue:Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b046e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0471

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1134
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0472

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1141
    :cond_e
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0468

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 760
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 836
    :goto_0
    return v10

    .line 762
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f09033b

    goto :goto_0

    .line 765
    :cond_1
    const/4 v6, 0x0

    .line 767
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 772
    const/4 v9, -0x1

    .line 774
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 775
    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 776
    :cond_2
    const v10, 0x7f09033e

    goto :goto_0

    .line 768
    .end local v9           #networkPrefixLength:I
    :catch_0
    move-exception v3

    .line 769
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f09033b

    goto :goto_0

    .line 778
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 790
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 793
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 794
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 795
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 796
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 810
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 813
    .local v2, dnsAddr:Ljava/net/InetAddress;
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 815
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090340

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 826
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 827
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 833
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 836
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 779
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 781
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_5

    .line 782
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f090346

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 785
    :cond_5
    const v10, 0x7f09033e

    goto/16 :goto_0

    .line 801
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 803
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 807
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 804
    :catch_2
    move-exception v3

    .line 805
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f09033c

    goto/16 :goto_0

    .line 818
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_7
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 822
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 819
    :catch_3
    move-exception v3

    .line 820
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f09033d

    goto/16 :goto_0

    .line 830
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 831
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f09033d

    goto/16 :goto_0

    .line 798
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 797
    :catch_6
    move-exception v10

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiNewDialog$4;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 953
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 540
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiNewDialog"

    const-string v7, "enableSubmitIfAppropriate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 543
    .local v4, submit:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 544
    .local v0, connect:Landroid/widget/Button;
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 545
    const-string v6, "WifiNewDialog"

    const-string v7, "submit button is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    const/4 v5, 0x0

    .line 551
    .local v5, trimedSsidLength:I
    const/4 v1, 0x1

    .line 552
    .local v1, enabled:Z
    const/4 v3, 0x0

    .line 554
    .local v3, passwordInvalid:Z
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_13

    .line 555
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 556
    .local v2, passLen:I
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_10

    if-ge v2, v10, :cond_10

    .line 558
    :cond_4
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_5
    const/4 v3, 0x1

    .line 570
    .end local v2           #passLen:I
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 571
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 572
    const/4 v1, 0x0

    .line 574
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 577
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->ipAndProxyFieldsAreValid()Z

    move-result v6

    if-nez v6, :cond_9

    .line 578
    const/4 v1, 0x0

    .line 581
    :cond_9
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "WifiNewDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v6, v9, :cond_c

    :cond_b
    if-eqz v3, :cond_c

    .line 583
    const/4 v1, 0x0

    .line 586
    :cond_c
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v6, :cond_d

    if-nez v5, :cond_d

    .line 587
    const/4 v1, 0x0

    .line 589
    :cond_d
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v6, :cond_e

    if-eqz v3, :cond_e

    .line 590
    const/4 v1, 0x0

    .line 592
    :cond_e
    if-eqz v4, :cond_f

    .line 593
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    :cond_f
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 560
    .restart local v2       #passLen:I
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_11

    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 563
    :cond_11
    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_12

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid (saved ap)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 567
    .end local v2           #passLen:I
    :cond_13
    const-string v6, "WifiNewDialog"

    const-string v7, "mPasswordView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 600
    const-string v4, "WifiNewDialog"

    const-string v7, "getConfig()"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_0

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-nez v4, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0

    .line 605
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 607
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v4, :cond_4

    .line 608
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 611
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 622
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 704
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_3

    .line 705
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 706
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 709
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 713
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 714
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 715
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 612
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v4, v9, :cond_5

    .line 613
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 616
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v4, :cond_6

    .line 617
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 619
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 624
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 628
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 629
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 630
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 631
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 633
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 634
    .local v2, length:I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_8

    :cond_7
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 638
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v6

    goto/16 :goto_2

    .line 640
    :cond_8
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto/16 :goto_2

    .line 646
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v4, :cond_9

    .line 647
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 651
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 655
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 649
    .end local v3           #password:Ljava/lang/String;
    :cond_9
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 657
    .restart local v3       #password:Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 663
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v4, :cond_c

    .line 664
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 671
    :goto_4
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 672
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    const-string v7, "FAST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 673
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fast_provisioning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 674
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 677
    :cond_b
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ""

    :goto_5
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 679
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    :goto_6
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 682
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_7
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 686
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_11

    move v1, v5

    .line 687
    .local v1, isEmptyKeyId:Z
    :goto_8
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_12

    const-string v4, ""

    :goto_9
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_13

    const-string v4, "0"

    :goto_a
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 691
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_14

    const-string v4, ""

    :goto_b
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 693
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_15

    const-string v4, ""

    :goto_c
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 695
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_16

    const-string v4, ""

    :goto_d
    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 699
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 665
    .end local v1           #isEmptyKeyId:Z
    :cond_c
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    if-eqz v4, :cond_d

    .line 666
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 668
    :cond_d
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 669
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 677
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auth="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 679
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 682
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_11
    move v1, v6

    .line 686
    goto/16 :goto_8

    .line 687
    .restart local v1       #isEmptyKeyId:Z
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 689
    :cond_13
    const-string v4, "1"

    goto/16 :goto_a

    .line 691
    :cond_14
    const-string v4, "keystore"

    goto/16 :goto_b

    .line 693
    :cond_15
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 695
    :cond_16
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_d

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1398
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1399
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    .line 1400
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1401
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0b047d

    const v5, 0x7f0b047c

    const v4, 0x7f0b0478

    const/4 v3, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0425

    if-ne v1, v2, :cond_3

    .line 843
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 845
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 846
    const-string v1, "WifiNewDialog"

    const-string v2, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 850
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 851
    .local v0, pos:I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 855
    if-ltz v0, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 851
    :cond_2
    const/16 v1, 0x80

    goto :goto_1

    .line 858
    .end local v0           #pos:I
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0477

    if-ne v1, v2, :cond_5

    .line 859
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 860
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 862
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 864
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 865
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 867
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    if-eqz v1, :cond_0

    .line 868
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 869
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 871
    .restart local p1
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 872
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    .line 874
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedCckm:Z

    if-eqz v1, :cond_0

    .line 875
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIsCheckedFt:Z

    .line 876
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 261
    const-string v17, "WifiNewDialog"

    const-string v18, "onCreate()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 264
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 265
    .local v12, resources:Landroid/content/res/Resources;
    const-string v17, "enterprise_policy"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f04016e

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setView(Landroid/view/View;)V

    .line 268
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0422

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0460

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0459

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b004a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 287
    .local v10, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 288
    const-string v17, "WifiNewDialog"

    const-string v18, "onCreate: mAccessPoint == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const v17, 0x7f0902a8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setTitle(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0238

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0420

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showProxyFields()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showKeyMgmtFields()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0476

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0477

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const/16 v17, -0x1

    const v18, 0x7f0903e1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    const/16 v17, -0x3

    const v18, 0x7f0903e3

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 440
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    .line 442
    const/16 v17, -0x3

    const v18, 0x7f0902c6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 451
    :goto_1
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 466
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 467
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 468
    sget v17, Lcom/android/settings_ex/wifi/WifiNewDialog;->Remembered:I

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 469
    const/16 v17, -0x1

    const v18, 0x7f0902c6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 472
    :cond_1
    const/16 v17, 0x1

    sput v17, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    .line 473
    sget v17, Lcom/android/settings_ex/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v17, :cond_1c

    .line 474
    const/16 v17, -0x2

    const v18, 0x7f0902c9

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 475
    const/16 v17, 0x1

    sput v17, Lcom/android/settings_ex/wifi/WifiSettings;->cancel_network:I

    .line 480
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 484
    sget v17, Lcom/android/settings_ex/wifi/WifiNewDialog;->Remembered:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 485
    const/16 v17, -0x1

    const v18, 0x7f0903e1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_1d

    .line 490
    const v17, 0x7f0903e9

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    :cond_3
    :goto_4
    const/16 v17, -0x3

    const v18, 0x7f0902c6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 498
    const/16 v17, -0x2

    const v18, 0x7f0902c7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 500
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 502
    const/16 v17, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 507
    :cond_5
    new-instance v17, Lcom/android/settings_ex/wifi/WifiNewDialog$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 514
    return-void

    .line 310
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 311
    const v17, 0x7f0903ea

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b041f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 317
    .local v8, group:Landroid/view/ViewGroup;
    const-string v17, "WifiNewDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreate: details "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 319
    .local v15, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v15, :cond_7

    .line 320
    const v17, 0x7f0902db

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 322
    :cond_7
    const v17, 0x7f0a0021

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, type:[Ljava/lang/String;
    const v17, 0x7f0902d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v11

    .line 326
    .local v11, level:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    .line 327
    const v17, 0x7f0a002f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, signal:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_8

    .line 329
    const-string v17, "WifiNewDialog"

    const-string v18, "Force level of wifi signal"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 332
    :cond_8
    const v17, 0x7f0902da

    aget-object v18, v14, v11

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 335
    .end local v14           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 337
    .local v9, info:Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_a

    .line 338
    const v17, 0x7f0902dc

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Mbps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 340
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    .line 341
    .local v4, address:I
    if-eqz v4, :cond_a

    .line 342
    const v17, 0x7f0902dd

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 347
    .end local v4           #address:I
    :cond_a
    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 349
    .local v6, config_details:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_c

    .line 350
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 351
    const v17, 0x7f09027f

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 353
    :cond_b
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 354
    const v17, 0x7f090280

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ex/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 360
    .end local v6           #config_details:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v13, 0x0

    .line 361
    .local v13, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 362
    const-string v17, "WifiNewDialog"

    const-string v18, "network id is valid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 364
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 365
    const-string v17, "WifiNewDialog"

    const-string v18, "ip assignment static"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 367
    const/4 v13, 0x1

    .line 373
    :goto_6
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 374
    const-string v17, "WifiNewDialog"

    const-string v18, "proxy static"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 376
    const/4 v13, 0x1

    .line 382
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 383
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 389
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showSecurityFields()V

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showProxyFields()V

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showKeyMgmtFields()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0476

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0477

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    if-eqz v13, :cond_f

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0477

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0478

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0238

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0420

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0422

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0422

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 411
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    .line 412
    const-string v17, "WifiNewDialog"

    const-string v18, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v17, -0x1

    const v18, 0x7f0903e1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 414
    const/16 v17, -0x3

    const v18, 0x7f0903e3

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    const-string v17, "WifiNewDialog"

    const-string v18, "EDIT true connect and submit btn set "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/settings_ex/wifi/WifiNewDialog;->previousssid:Ljava/lang/String;

    .line 417
    const/16 v17, 0x1

    sput v17, Lcom/android/settings_ex/wifi/WifiNewDialog;->bEdit:I

    goto/16 :goto_0

    .line 313
    .end local v8           #group:Landroid/view/ViewGroup;
    .end local v9           #info:Landroid/net/wifi/WifiInfo;
    .end local v11           #level:I
    .end local v13           #showAdvancedFields:Z
    .end local v15           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v16           #type:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 369
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v8       #group:Landroid/view/ViewGroup;
    .restart local v9       #info:Landroid/net/wifi/WifiInfo;
    .restart local v11       #level:I
    .restart local v13       #showAdvancedFields:Z
    .restart local v15       #state:Landroid/net/NetworkInfo$DetailedState;
    .restart local v16       #type:[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 378
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 385
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 419
    :cond_14
    if-nez v15, :cond_17

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_17

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 421
    const v17, 0x7f0903e9

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :cond_15
    :goto_9
    const/16 v17, -0x1

    const v18, 0x7f0903e1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 428
    const-string v17, "WifiNewDialog"

    const-string v18, "EDIT false state null set connect button "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->manageNetwork:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 434
    const/16 v17, -0x1

    const v18, 0x7f0903e2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 423
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 424
    const v17, 0x7f0902c8

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 430
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b045f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 444
    .end local v8           #group:Landroid/view/ViewGroup;
    .end local v9           #info:Landroid/net/wifi/WifiInfo;
    .end local v11           #level:I
    .end local v13           #showAdvancedFields:Z
    .end local v15           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v16           #type:[Ljava/lang/String;
    :cond_18
    const/16 v17, -0x3

    const v18, 0x7f0902c5

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 445
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    .line 446
    const-string v17, "WifiNewDialog"

    const-string v18, "vzwViewFlag sets to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v17, -0x2

    const v18, 0x7f0902c6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 448
    const/16 v17, 0x0

    sput v17, Lcom/android/settings_ex/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 453
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 455
    .restart local v15       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v15, :cond_1b

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_1a

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_1a

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_1b

    .line 458
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b041f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 459
    .restart local v8       #group:Landroid/view/ViewGroup;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 462
    .end local v8           #group:Landroid/view/ViewGroup;
    .end local v15           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_1b
    const/16 v17, -0x2

    const v18, 0x7f0903e4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 477
    :cond_1c
    const/16 v17, -0x2

    const v18, 0x7f0902c7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 478
    const/16 v17, 0x1

    sput v17, Lcom/android/settings_ex/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 493
    :cond_1d
    const v17, 0x7f0902c8

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 965
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 966
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showSecurityFields()V

    .line 969
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showKeyMgmtFields()V

    .line 978
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 979
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 972
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showSecurityFields()V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 974
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showProxyFields()V

    goto :goto_0

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 982
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 950
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0472

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 518
    .local v1, layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0425

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 520
    .local v0, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v2, 0x7f0902e9

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->onClick(Landroid/view/View;)V

    .line 523
    .end local v0           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0476

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 524
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0477

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 526
    .restart local v0       #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v2, 0x7f0902bc

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->onClick(Landroid/view/View;)V

    .line 529
    .end local v0           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_1
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1381
    const-string v0, "WifiNewDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1384
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1386
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1388
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1389
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1391
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1392
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1394
    :cond_2
    return-void
.end method
