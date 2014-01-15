.class Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x3

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

.field private final mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

.field private mTetheredData:I

.field private final mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings_ex/accounts/AuthenticatorHelper;)V
    .locals 10
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings_ex/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 999
    invoke-direct {p0, p1, v9, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 911
    iput v9, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mTetheredData:I

    .line 1000
    iput-object p1, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1001
    iput-object p3, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 1002
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1006
    new-instance v0, Lcom/android/settings_ex/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 1020
    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    .line 1023
    new-instance v0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    .line 1025
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 1026
    new-instance v0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    .line 1027
    new-instance v0, Lcom/android/settings_ex/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    .line 1028
    new-instance v0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    .line 1029
    new-instance v0, Lcom/android/settings_ex/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    .line 1030
    new-instance v0, Lcom/android/settings_ex/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    new-instance v0, Lcom/android/settings_ex/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings_ex/nfc/NfcEnabler$INfcHelpController;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 1039
    :goto_0
    new-instance v0, Lcom/android/settings_ex/nfc/SBeamEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/android/settings_ex/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    .line 1044
    new-instance v0, Lcom/android/settings_ex/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings_ex/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    .line 1046
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_1
    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v8, :cond_0

    move-object v0, p1

    .line 1048
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings_ex/wifi/WifiEnabler;Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    .line 1051
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1052
    .local v7, a:Landroid/content/res/TypedArray;
    const/16 v0, 0x110

    const v1, 0x10900c2

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 1053
    const/16 v0, 0x134

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 1055
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    .line 1056
    return-void

    .line 1035
    .end local v7           #a:Landroid/content/res/TypedArray;
    :cond_1
    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 1046
    goto :goto_1

    .restart local v7       #a:Landroid/content/res/TypedArray;
    :cond_3
    move v0, v9

    .line 1055
    goto :goto_2
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .parameter "header"

    .prologue
    const-wide/32 v5, 0x7f0b04e2

    const/4 v4, 0x0

    .line 946
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    .line 948
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04df

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04e1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04f8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04f9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04fe

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0506

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0534

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0524

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04e0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04ea

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b04eb

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0507

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 962
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 964
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 972
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1062
    .local v3, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v3}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 1063
    .local v4, headerType:I
    const/4 v9, 0x0

    .line 1065
    .local v9, view:Landroid/view/View;
    if-nez p2, :cond_7

    .line 1066
    new-instance v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings_ex/SettingsTabActivity$1;)V

    .line 1067
    .local v5, holder:Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    packed-switch v4, :pswitch_data_0

    .line 1114
    :goto_0
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1121
    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 1269
    :cond_0
    :goto_2
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 1280
    :cond_1
    return-object v9

    .line 1069
    :pswitch_0
    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    if-eqz v10, :cond_3

    .line 1070
    iget v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090127

    if-ne v10, v11, :cond_2

    .line 1071
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090124

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    :goto_3
    move-object v10, v9

    .line 1077
    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090125

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 1075
    :cond_3
    new-instance v9, Landroid/widget/TextView;

    .end local v9           #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x1010208

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v9       #view:Landroid/view/View;
    goto :goto_3

    .line 1081
    :pswitch_1
    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_5

    .line 1082
    iget v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090127

    if-ne v10, v11, :cond_4

    .line 1083
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090129

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1087
    :goto_4
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1088
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1089
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1090
    const v10, 0x10203ed

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lmiui/widget/SlidingButton;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    goto/16 :goto_0

    .line 1085
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x109012a

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_4

    .line 1092
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0400ed

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1093
    const v10, 0x7f0b005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1094
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1096
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1098
    const v10, 0x7f0b02e3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    goto/16 :goto_0

    .line 1103
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_6

    .line 1104
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1107
    :goto_5
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1108
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1110
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1106
    :cond_6
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x10900c2

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_5

    .line 1116
    .end local v5           #holder:Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    :cond_7
    move-object/from16 v9, p2

    .line 1117
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v5       #holder:Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1123
    :pswitch_3
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1129
    :pswitch_4
    iget-boolean v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v10, :cond_d

    .line 1130
    iget v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v11, 0x1090127

    if-ne v10, v11, :cond_c

    .line 1131
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x1090129

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1135
    :goto_6
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1136
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1137
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1138
    const v10, 0x10203ed

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    .line 1139
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1150
    :goto_7
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04df

    cmp-long v10, v10, v12

    if-nez v10, :cond_e

    .line 1151
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1190
    :cond_8
    :goto_8
    const v10, 0x10202d3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1191
    .local v2, dynamicDivider:Landroid/view/View;
    if-eqz v2, :cond_9

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v10, :cond_9

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1192
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_9
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1201
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    .line 1208
    .end local v2           #dynamicDivider:Landroid/view/View;
    :cond_a
    :pswitch_5
    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v10, :cond_1a

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v11, "account_type"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1210
    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v11, "account_type"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, accType:Ljava/lang/String;
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1213
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1215
    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1216
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1218
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    .end local v1           #accType:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_9
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1224
    .local v8, summary:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1225
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/settings_ex/SettingsTabActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04df

    cmp-long v10, v10, v12

    if-eqz v10, :cond_b

    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e1

    cmp-long v10, v10, v12

    if-nez v10, :cond_1b

    .line 1252
    :cond_b
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1133
    .end local v8           #summary:Ljava/lang/CharSequence;
    :cond_c
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x109012a

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_6

    .line 1141
    :cond_d
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0400ed

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1142
    const v10, 0x7f0b005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1143
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1144
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1145
    const v10, 0x7f0b02e3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    .line 1146
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1152
    :cond_e
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e0

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    .line 1159
    :cond_f
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e2

    cmp-long v10, v10, v12

    if-nez v10, :cond_10

    .line 1160
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1162
    :cond_10
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04f8

    cmp-long v10, v10, v12

    if-nez v10, :cond_11

    .line 1163
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1164
    :cond_11
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04f9

    cmp-long v10, v10, v12

    if-nez v10, :cond_12

    .line 1165
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1166
    :cond_12
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04fe

    cmp-long v10, v10, v12

    if-nez v10, :cond_13

    .line 1167
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->setSwitch(Lmiui/widget/SlidingButton;)V

    goto/16 :goto_8

    .line 1168
    :cond_13
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0534

    cmp-long v10, v10, v12

    if-nez v10, :cond_14

    .line 1169
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1170
    :cond_14
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0506

    cmp-long v10, v10, v12

    if-nez v10, :cond_15

    .line 1171
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1172
    :cond_15
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04ea

    cmp-long v10, v10, v12

    if-nez v10, :cond_16

    .line 1173
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1174
    :cond_16
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04eb

    cmp-long v10, v10, v12

    if-nez v10, :cond_17

    .line 1175
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1176
    :cond_17
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e1

    cmp-long v10, v10, v12

    if-nez v10, :cond_19

    .line 1179
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/settings_ex/SettingsTabActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1181
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    iget-object v12, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v11, v3, v12}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1183
    :cond_18
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1186
    :cond_19
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b0507

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 1187
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    iget-object v11, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Lmiui/widget/SlidingButton;

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1220
    :cond_1a
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v11, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1257
    .restart local v8       #summary:Ljava/lang/CharSequence;
    :cond_1b
    iget-wide v10, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v12, 0x7f0b04e1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 1258
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v11, v3, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1264
    :cond_1c
    iget-object v10, v5, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 1313
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->pause()V

    .line 1321
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 1322
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1323
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->pause()V

    .line 1324
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DrivingModeEnabler;->pause()V

    .line 1325
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/motion/MotionEnabler;->pause()V

    .line 1326
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->pause()V

    .line 1327
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnPause()V

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/VoiceInputControlEnabler;->pause()V

    .line 1330
    :cond_3
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->resume()V

    .line 1300
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume()V

    .line 1301
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->resume()V

    .line 1302
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DrivingModeEnabler;->resume()V

    .line 1303
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1304
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/motion/MotionEnabler;->resume()V

    .line 1305
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->resume()V

    .line 1306
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnResume()V

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/VoiceInputControlEnabler;->resume()V

    .line 1309
    :cond_3
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings_ex/SettingsTabActivity;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings_ex/wifi/WifiEnabler;Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    .line 1351
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1333
    if-eqz p1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1339
    :goto_0
    return-void

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
