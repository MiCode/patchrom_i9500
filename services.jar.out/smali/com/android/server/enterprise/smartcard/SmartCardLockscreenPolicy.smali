.class public Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;
.source "SmartCardLockscreenPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preAdminRemoval_auth_state:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "SmartCardLockscreenPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    .line 98
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 102
    return-void
.end method

.method private broadcastIntent(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.smartcard.lockscreen.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method private enforcePermission()I
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public disableAuthentication()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    .line 157
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v3

    .line 158
    .local v3, oldState:Z
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardLockscreenTable"

    const-string v8, "smartcardAuth"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 161
    .local v4, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v2

    .line 163
    .local v2, newState:Z
    if-eq v2, v3, :cond_0

    .line 164
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2           #newState:Z
    .end local v3           #oldState:Z
    .end local v4           #ret:Z
    :cond_0
    :goto_0
    return v4

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v7, "disableAuthentication() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 171
    goto :goto_0
.end method

.method public enableAuthentication()Z
    .locals 9

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    .line 136
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v3

    .line 137
    .local v3, oldState:Z
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string v7, "smartcardAuth"

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 140
    .local v4, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v2

    .line 142
    .local v2, newState:Z
    if-eq v2, v3, :cond_0

    .line 143
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2           #newState:Z
    .end local v3           #oldState:Z
    .end local v4           #ret:Z
    :cond_0
    :goto_0
    return v4

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "enableAuthentication() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isAuthenticationEnabled()Z
    .locals 8

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 185
    .local v2, ret:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string v7, "smartcardAuth"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 188
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 189
    .local v3, value:Z
    if-eqz v3, :cond_0

    .line 190
    move v2, v3

    .end local v3           #value:Z
    :cond_1
    move v5, v2

    .line 199
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    return v5

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 220
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v0

    .line 227
    .local v0, curr_auth_state:Z
    iget-boolean v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    if-eq v0, v1, :cond_0

    .line 228
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    .line 231
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    .line 237
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
