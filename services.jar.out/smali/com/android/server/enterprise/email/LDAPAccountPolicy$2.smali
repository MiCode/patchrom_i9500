.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, action:Ljava/lang/String;
    const-string v3, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const-string v3, "LDAPAccountPolicyService"

    const-string v4, "Received intent : ACTION_LDAP_CREATE_ACCT"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v3, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, _intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.ldap.result"

    const-string v4, "edm.intent.extra.ldap.result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v3, "edm.intent.extra.ldap.acct.id"

    const-string v4, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    #getter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    .end local v0           #_intent:Landroid/content/Intent;
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
