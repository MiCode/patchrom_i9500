.class Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 172
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->val$success:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 180
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x1000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v6, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 188
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 205
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v3, 0x1040884

    invoke-interface {v1, v3, v0}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
