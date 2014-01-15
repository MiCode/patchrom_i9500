.class public Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;
.super Landroid/app/Fragment;
.source "BluetoothPairingWithCac.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BluetoothPairingWithCac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothPairingWithCacFragment"
.end annotation


# static fields
.field private static final mBtConnectImage:I = 0x7f02006b

.field private static mPasswordChangeEnforced:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBtConnect:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHeaderText:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    .line 145
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    return v0
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 128
    :cond_0
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNext()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, intentBluetooth:Landroid/content/Intent;
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "SmartcardPasswordEnforced"

    sget-boolean v2, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 134
    iget v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 138
    :cond_0
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->handleNext()V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v4

    if-lez v4, :cond_0

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    iget-object v7, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v7}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 265
    .local v2, when:J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 269
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 271
    iget-object v4, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sender:Landroid/app/PendingIntent;
    .end local v2           #when:J
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 296
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x7f0b0051
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PasswordChangeEnforced"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 159
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 160
    const-string v0, "BluetoothPairingWithCac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswordChangeEnforced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v9, 0x7f0b0051

    const/4 v8, 0x1

    .line 167
    const/4 v4, 0x0

    .line 170
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 173
    :cond_0
    const v5, 0x7f04001f

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 174
    const v5, 0x7f0b0053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 175
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 178
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    .line 179
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    :goto_0
    const v5, 0x7f0b0050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    .line 190
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    const v6, 0x7f02006b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    const v5, 0x7f0b0052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mNextButton:Landroid/widget/Button;

    .line 192
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    const v5, 0x7f0b004f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mHeaderText:Landroid/widget/TextView;

    .line 198
    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 199
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 200
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v1, 0x7f0901c4

    .line 201
    .local v1, id:I
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 202
    .local v3, title:Ljava/lang/CharSequence;
    invoke-virtual {v2, v3, v3}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 205
    .end local v1           #id:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_1
    return-object v4

    .line 182
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    const v5, 0x7f04001e

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 183
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    .line 184
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    iget-object v5, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 225
    sget-boolean v0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->reenableStatusBar()V

    .line 228
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceConnectedWithCACCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->disableStatusBar()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method protected updateStage()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
