.class public Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;
.source "SmartCardVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mVpnProfiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "SmartCardVpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 61
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    return-void
.end method

.method private broadcastIntent()V
    .locals 4

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 204
    .local v1, vpnProfilesPrev:I
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 206
    if-lez v1, :cond_1

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-nez v2, :cond_1

    .line 207
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v2, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private enforcePermission()I
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getVpnProfileCount()I
    .locals 4

    .prologue
    .line 191
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v0, cvWhere:Landroid/content/ContentValues;
    const-string v2, "vpnAuthEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardVpnTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    .end local v0           #cvWhere:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getVpnProfileCount() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public isAuthenticationEnabled()Z
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthenticationEnabled(): Number of VPN profiles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCredentialRequired(Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return v3

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 135
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v1, cvWhere:Landroid/content/ContentValues;
    const-string v5, "vpnProfile"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v5, "vpnAuthEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardVpnTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 142
    .local v0, cnt:I
    if-gtz v0, :cond_1

    .line 143
    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isCredentialRequired() : entry does not exist"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0           #cnt:I
    .end local v1           #cvWhere:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isCredentialRequired() failed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #cnt:I
    .restart local v1       #cvWhere:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isCredentialRequired() : entry exists"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 146
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 177
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntent()V

    .line 182
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 187
    return-void
.end method

.method public requireCredentials(Ljava/lang/String;Z)Z
    .locals 10
    .parameter "profileName"
    .parameter "require"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->enforcePermission()I

    move-result v0

    .line 84
    .local v0, callingUid:I
    if-nez p1, :cond_0

    move v5, v6

    .line 120
    :goto_0
    return v5

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 91
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v3, cvWhere:Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v8, "vpnProfile"

    invoke-virtual {v3, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v5, 0x0

    .line 96
    .local v5, ret:Z
    iget-object v8, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardVpnTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 98
    .local v1, cnt:I
    if-lez v1, :cond_3

    .line 100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v2, cv:Landroid/content/ContentValues;
    const-string v8, "vpnAuthEnabled"

    if-ne p2, v7, :cond_2

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardVpnTable"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    .line 111
    .end local v2           #cv:Landroid/content/ContentValues;
    :goto_2
    if-eqz v5, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v1           #cnt:I
    .end local v3           #cvWhere:Landroid/content/ContentValues;
    .end local v5           #ret:Z
    :catch_0
    move-exception v4

    .line 117
    .local v4, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v8, "requireCredentials() failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 120
    goto :goto_0

    .restart local v1       #cnt:I
    .restart local v2       #cv:Landroid/content/ContentValues;
    .restart local v3       #cvWhere:Landroid/content/ContentValues;
    .restart local v5       #ret:Z
    :cond_2
    move v7, v6

    .line 101
    goto :goto_1

    .line 106
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    const-string v8, "vpnAuthEnabled"

    if-ne p2, v7, :cond_4

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardVpnTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_2

    :cond_4
    move v7, v6

    .line 106
    goto :goto_3
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCount()I

    move-result v0

    .line 170
    .local v0, cnt:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 171
    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 172
    :cond_0
    return-void
.end method
