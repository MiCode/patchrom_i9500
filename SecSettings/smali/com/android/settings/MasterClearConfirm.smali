.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MasterClearConfirm$2;,
        Lcom/android/settings_ex/MasterClearConfirm$PWState;
    }
.end annotation


# static fields
.field private static final CONFIRM_PHONE_PASSWORD:I = 0x65

.field private static final REQUEST_CHANGE_FIRST_TIME_PHONE_PASSWORD:I = 0x64

.field private static final SYSTEM_PHONE_PASSWORD:Ljava/lang/String; = "SYSTEM_PHONE_PASSWORD"

.field private static final TAG:Ljava/lang/String; = "MasterClearConfirm"

.field private static mTelMan:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 87
    sget-object v0, Lcom/android/settings_ex/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    .line 97
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .locals 11

    .prologue
    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    iget-object v7, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object v1, v7

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    iget-boolean v7, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v7, :cond_5

    .line 134
    iget-boolean v7, p0, Lcom/android/settings_ex/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v7, :cond_4

    .line 136
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, intent:Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 139
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 140
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v4, v6

    .line 141
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 142
    const-string v7, "sd"

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    const-string v7, "storage_volume"

    aget-object v8, v6, v2

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 141
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #length:I
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 156
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableModemResetDuringFactoryReset"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    const-string v7, "MasterClearConfirm"

    const-string v8, "ready to Factory reset. Call SecFactoryReset."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/settings_ex/MasterClearModemReset;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "FACTORY"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 162
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 163
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 196
    sget-object v0, Lcom/android/settings_ex/MasterClearConfirm$2;->$SwitchMap$com$android$settings$MasterClearConfirm$PWState:[I

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 198
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/android/settings_ex/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    .line 200
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f090033

    .line 173
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, phone_password:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 176
    sget-object v1, Lcom/android/settings_ex/MasterClearConfirm$PWState;->NEW:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mPWState:Lcom/android/settings_ex/MasterClearConfirm$PWState;

    .line 177
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090040

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings_ex/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->StartPassword()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public static isSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 217
    sget-object v1, Lcom/android/settings_ex/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings_ex/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 221
    :cond_1
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    if-ne p2, v2, :cond_0

    .line 233
    invoke-direct {p0, p3}, Lcom/android/settings_ex/MasterClearConfirm;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    if-ne p2, v2, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 286
    if-eqz v0, :cond_0

    const-string v1, "can_erase_sd_on_fuse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mCanEraseExternalOnFuseSystem:Z

    .line 288
    return-void

    :cond_1
    move v1, v2

    .line 284
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 263
    const v0, 0x7f0400b4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 273
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "subject"
    .parameter "password"
    .parameter "requestCode"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method
