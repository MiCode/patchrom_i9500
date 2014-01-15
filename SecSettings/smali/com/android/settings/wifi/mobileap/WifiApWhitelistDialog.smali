.class public Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static final ADD_DEVICE:I = 0x0

.field public static final ADD_DEVICE_FROM_CONNECTED:I = 0x1

.field public static final EDIT_DEVICE:I = 0x2

.field private static final MAX_NAME_LENGTH:I = 0x20

.field public static final REMOVE_DEVICE_FROM_CONNECTED:I = 0x3

.field public static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mIsTalkBackEnabled:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mMacFilter:Landroid/text/InputFilter;

.field private mTempMac:Ljava/lang/String;

.field private mTempSsid:Ljava/lang/String;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "name"
    .parameter "mac"
    .parameter "listener"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 95
    const v0, 0x7f100032

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    .line 70
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    .line 72
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    .line 81
    new-array v0, v2, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    .line 85
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    .line 249
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    .line 97
    iput p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 98
    iput-object p3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    return-void

    .line 72
    :array_0
    .array-data 0x4
        0x3et 0x4t 0xbt 0x7ft
        0x3ft 0x4t 0xbt 0x7ft
        0x40t 0x4t 0xbt 0x7ft
        0x41t 0x4t 0xbt 0x7ft
        0x42t 0x4t 0xbt 0x7ft
        0x43t 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method private addDevice()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method private editDevice()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, enabled:Z
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 281
    const/4 v0, 0x1

    .line 287
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 290
    const/4 v0, 0x0

    .line 296
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 297
    return-void

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, -0x1

    const v10, 0x7f09035c

    const v9, 0x7f0b043b

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040169

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 110
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v8}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 113
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b043c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 114
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0407

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    .line 115
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0444

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 116
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, SalesCode:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v1

    .line 119
    const-string v3, "CHN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TGY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    aput-object v6, v4, v5

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    const/16 v4, 0x91

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 129
    :cond_2
    iget v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v3, :cond_3

    .line 130
    const v3, 0x7f090355

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 131
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const v4, 0x7f0b043e

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 165
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090699

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0903e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 176
    return-void

    .line 135
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v3, v8, :cond_4

    .line 136
    const v3, 0x7f090355

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 137
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 142
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 143
    const v3, 0x7f09035a

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 144
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b043a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 150
    .local v2, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b043d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0444

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 153
    .end local v2           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_5
    const v3, 0x7f0902c6

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 159
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 160
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 162
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2
.end method

.method public show()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    :cond_1
    return-void
.end method
