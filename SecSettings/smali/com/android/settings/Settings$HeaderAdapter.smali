.class Lcom/android/settings_ex/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
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

.field private final mMouseHoveringViewEnabler:Lcom/android/settings_ex/MouseHoveringViewEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

.field private final mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

.field private mTetheredData:I

.field private final mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings_ex/accounts/AuthenticatorHelper;)V
    .locals 6
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1228
    invoke-direct {p0, p1, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1120
    iput v4, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mTetheredData:I

    .line 1229
    iput-object p1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1230
    iput-object p3, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 1231
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1235
    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 1249
    iput-object v2, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    .line 1252
    new-instance v1, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    .line 1254
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    .line 1255
    new-instance v1, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    .line 1256
    new-instance v1, Lcom/android/settings_ex/DrivingModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    .line 1257
    new-instance v1, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    .line 1258
    new-instance v1, Lcom/android/settings_ex/motion/MotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    .line 1259
    new-instance v1, Lcom/android/settings_ex/FingerAirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    .line 1260
    new-instance v1, Lcom/android/settings_ex/MouseHoveringViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/MouseHoveringViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    .line 1261
    new-instance v1, Lcom/android/settings_ex/samba/SambaEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/samba/SambaEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    .line 1262
    new-instance v1, Lcom/android/settings_ex/VoiceInputControlEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings_ex/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    .line 1265
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    move-object v1, p1

    .line 1267
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {v1, v2, v5}, Lcom/android/settings_ex/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings_ex/wifi/WifiEnabler;Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    .line 1270
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1271
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x110

    const v2, 0x10900c2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 1272
    const/16 v1, 0x134

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isDeviceDefault:Z

    .line 1274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isTablet:Z

    .line 1275
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    move-object v1, v2

    .line 1265
    goto :goto_0

    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_2
    move v1, v4

    .line 1274
    goto :goto_1
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .parameter "header"

    .prologue
    const-wide/32 v5, 0x7f0b04e2

    const/4 v4, 0x0

    .line 1179
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 1180
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return v0

    .line 1181
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

    const-wide/32 v2, 0x7f0b0535

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

    const-wide/32 v2, 0x7f0b0507

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1193
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1195
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1203
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1281
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1282
    .local v2, headerType:I
    const/4 v7, 0x0

    .line 1284
    .local v7, view:Landroid/view/View;
    if-nez p2, :cond_7

    .line 1285
    new-instance v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings_ex/Settings$1;)V

    .line 1286
    .local v3, holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1333
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1340
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1497
    :cond_0
    :goto_2
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04e0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1508
    :cond_1
    return-object v7

    .line 1288
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v8, :cond_3

    .line 1289
    iget v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x1090127

    if-ne v8, v9, :cond_2

    .line 1290
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090124

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    :goto_3
    move-object v8, v7

    .line 1296
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090125

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    .line 1294
    :cond_3
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7       #view:Landroid/view/View;
    goto :goto_3

    .line 1300
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_5

    .line 1301
    iget v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x1090127

    if-ne v8, v9, :cond_4

    .line 1302
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090129

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1306
    :goto_4
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1307
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1308
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1309
    const v8, 0x10203ed

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1304
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109012a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_4

    .line 1311
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400ed

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1312
    const v8, 0x7f0b005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1313
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1315
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1317
    const v8, 0x7f0b02e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1322
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_6

    .line 1323
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1326
    :goto_5
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1327
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1329
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1325
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x10900c2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_5

    .line 1335
    .end local v3           #holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_7
    move-object v7, p2

    .line 1336
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1342
    :pswitch_3
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1348
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_c

    .line 1349
    iget v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x1090127

    if-ne v8, v9, :cond_b

    .line 1350
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090129

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1354
    :goto_6
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1355
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1356
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1357
    const v8, 0x10203ed

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1358
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1369
    :goto_7
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04df

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 1370
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1415
    :cond_8
    :goto_8
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1420
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 1427
    :cond_9
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_1a

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1429
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, accType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1432
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1434
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1435
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1437
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    .end local v0           #accType:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_9
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04fb

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 1444
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1450
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1452
    .local v6, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1453
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Settings;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 1480
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1352
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109012a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_6

    .line 1360
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400ed

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1361
    const v8, 0x7f0b005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1362
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1363
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1364
    const v8, 0x7f0b02e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1365
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1371
    :cond_d
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0524

    cmp-long v8, v8, v10

    if-nez v8, :cond_e

    .line 1372
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v8, :cond_8

    .line 1373
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1374
    :cond_e
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04e0

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 1381
    :cond_f
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04e2

    cmp-long v8, v8, v10

    if-nez v8, :cond_10

    .line 1382
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1384
    :cond_10
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04f8

    cmp-long v8, v8, v10

    if-nez v8, :cond_11

    .line 1385
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1386
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    invoke-virtual {v8, v1, p1}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_8

    .line 1387
    :cond_11
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04f9

    cmp-long v8, v8, v10

    if-nez v8, :cond_12

    .line 1388
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1389
    :cond_12
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04fe

    cmp-long v8, v8, v10

    if-nez v8, :cond_13

    .line 1390
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1391
    :cond_13
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0534

    cmp-long v8, v8, v10

    if-nez v8, :cond_14

    .line 1392
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1393
    :cond_14
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0506

    cmp-long v8, v8, v10

    if-nez v8, :cond_15

    .line 1394
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1395
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v8, v1, p1}, Lcom/android/settings_ex/FingerAirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_8

    .line 1396
    :cond_15
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0535

    cmp-long v8, v8, v10

    if-nez v8, :cond_16

    .line 1397
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1398
    :cond_16
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0527

    cmp-long v8, v8, v10

    if-nez v8, :cond_17

    .line 1399
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/samba/SambaEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1400
    :cond_17
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0507

    cmp-long v8, v8, v10

    if-nez v8, :cond_18

    .line 1401
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1402
    :cond_18
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04e1

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1405
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Settings;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1407
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v10, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 1409
    :cond_19
    iget-object v8, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1439
    :cond_1a
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1485
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_1b
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b04e1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1486
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1492
    :cond_1c
    iget-object v8, v3, Lcom/android/settings_ex/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1340
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
    .line 1218
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 1541
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->pause()V

    .line 1549
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->pause()V

    .line 1550
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1551
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->pause()V

    .line 1552
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DrivingModeEnabler;->pause()V

    .line 1553
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/motion/MotionEnabler;->pause()V

    .line 1554
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->pause()V

    .line 1555
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->pause()V

    .line 1556
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaEnabler;->pause()V

    .line 1557
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/VoiceInputControlEnabler;->pause()V

    .line 1558
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    .line 1520
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->resume()V

    .line 1528
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->resume()V

    .line 1529
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings_ex/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->resume()V

    .line 1530
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings_ex/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DrivingModeEnabler;->resume()V

    .line 1531
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1532
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings_ex/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/motion/MotionEnabler;->resume()V

    .line 1533
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->resume()V

    .line 1534
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings_ex/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->resume()V

    .line 1535
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaEnabler;->resume()V

    .line 1536
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings_ex/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/VoiceInputControlEnabler;->resume()V

    .line 1537
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings_ex/Settings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings_ex/wifi/WifiEnabler;Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    .line 1579
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1561
    if-eqz p1, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1567
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1565
    iget-object v0, p0, Lcom/android/settings_ex/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
