.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Landroid/app/enterprise/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_LDAP_INTERFACE_SERVICE:Ljava/lang/String; = "com.android.email.MDM_LDAP"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsBound:Z

.field private mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/enterprise/ILDAPInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    .line 59
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mConnection:Landroid/content/ServiceConnection;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/app/enterprise/ILDAPInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Landroid/app/enterprise/ILDAPInterface;)Landroid/app/enterprise/ILDAPInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindLDAPInterfaceService()V
    .locals 4

    .prologue
    .line 109
    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "bindLDAPInterfaceService()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.MDM_LDAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    .line 111
    return-void
.end method

.method private enforceLDAPPermission()I
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerLDAPInterfaceReceiver()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "edm.intent.action.ldap.createacct.internal"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    .locals 4
    .parameter "ldap"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    .line 124
    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ILDAPInterface;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.ldap.result"

    const/4 v3, -0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v2, "edm.intent.extra.ldap.acct.id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteLDAPAccount(J)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    .line 149
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 150
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "LDAPAccountPolicy.deleteLDAPAccount : ldapId is invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 154
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/ILDAPInterface;->deleteLDAPAccount(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllLDAPAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    .line 198
    iget-boolean v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    .line 202
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v1}, Landroid/app/enterprise/ILDAPInterface;->getAllLDAPAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "Failed talking to EDM LDAP service "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    .line 173
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 174
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "LDAPAccountPolicy.getLDAPAccount : ldapId is invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    .line 182
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/ILDAPInterface;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 227
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 232
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 237
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "LDAPAccountPolicy:systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->registerLDAPInterfaceReceiver()V

    .line 221
    return-void
.end method
