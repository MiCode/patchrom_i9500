.class public Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ALLOW_ALL:I = 0x3

.field private static final CHANGE_IP:I = 0x1

.field private static final CHANGE_NAME:I = 0x0

.field private static final DENY_UNLESS_ACCEPTLIST:I = 0x1

.field private static final DIALOG_ADD_WHITELIST:I = 0x1

.field private static final DIALOG_REMOVE_WHITELIST:I = 0x3

.field private static final DIALOG_SHOW_INFO:I = 0x5

.field private static final LEASE_TIME:I = 0xe10

.field private static final TAG:Ljava/lang/String; = "WifiApConnectedDevice"


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private dialog:Landroid/app/AlertDialog;

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsPushShift:I

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceName"
    .parameter "mac"
    .parameter "ip"
    .parameter "connectedTime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 60
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 61
    iput v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 71
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 72
    iput v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 87
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 89
    const v0, 0x7f040101

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 282
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 283
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 284
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 286
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 288
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-void

    .line 188
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const v1, 0x7f090394

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 190
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_0
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 162
    instance-of v1, p1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 165
    check-cast v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .line 166
    .local v0, other:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->dialog:Landroid/app/AlertDialog;

    .line 95
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 96
    .local v4, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v2

    .line 97
    .local v2, isContains:Z
    if-eqz v2, :cond_0

    .line 98
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    const v5, 0x7f0b0304

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .local v0, btn:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0306

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 106
    .local v1, btnImg:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 109
    .local v3, wc:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 110
    if-nez v2, :cond_1

    .line 111
    iput v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 112
    const v5, 0x7f020279

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    new-instance v5, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090354

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    :goto_0
    const v5, 0x7f0b0303

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void

    .line 122
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v8, :cond_3

    .line 123
    if-eqz v2, :cond_1

    .line 124
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 125
    const v5, 0x7f02027a

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    new-instance v5, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090375

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_3
    iput v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 143
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 238
    instance-of v8, p1, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v8, :cond_0

    .line 239
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "onClick"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    .line 240
    check-cast v7, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    .line 241
    .local v7, whitelsitDialog:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    .line 243
    invoke-virtual {v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 278
    .end local v7           #whitelsitDialog:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 245
    .restart local v7       #whitelsitDialog:Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1
    :pswitch_1
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    check-cast p1, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 248
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const v3, 0x7f090361

    .line 267
    .local v3, msgId:I
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#ff"

    const-string v10, "#"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, color:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<font color="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</font>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, toastMsg:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 272
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 273
    .local v6, tv:Landroid/widget/TextView;
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 274
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 275
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    goto/16 :goto_0

    .line 252
    .end local v1           #color:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #toastMsg:Ljava/lang/String;
    .end local v6           #tv:Landroid/widget/TextView;
    .restart local p1
    :pswitch_2
    const-string v8, "WifiApConnectedDevice"

    const-string v9, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 255
    const v3, 0x7f090362

    .line 257
    .restart local v3       #msgId:I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 258
    .local v2, msg:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v2, Landroid/os/Message;->what:I

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, b:Landroid/os/Bundle;
    const-string v8, "mac"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 207
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 209
    sparse-switch p2, :sswitch_data_0

    .line 229
    :cond_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_2

    .line 230
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 233
    :cond_1
    :goto_0
    return v0

    .line 211
    :sswitch_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 214
    :sswitch_1
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 215
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 218
    :sswitch_2
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 222
    :sswitch_3
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_1

    .line 223
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 224
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
