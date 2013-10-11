.class final Lcom/android/server/enterprise/email/SettingsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$condition:Landroid/os/ConditionVariable;

.field final synthetic val$ret:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_passwd"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1168
    iget-object v0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "outgoing_user_passwd"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1169
    iget-object v0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1170
    return-void
.end method
