.class Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "FeatureSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettingsSetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 52
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    #calls: Lcom/android/settings_ex/FeatureSettingsSetupWizard;->setEasyMode()V
    invoke-static {v3}, Lcom/android/settings_ex/FeatureSettingsSetupWizard;->access$000(Lcom/android/settings_ex/FeatureSettingsSetupWizard;)V

    .line 55
    const-string v3, "jflteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "jactivelteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.att.android.digitallocker"

    const-string v4, "com.att.android.digitallocker.activities.SplashActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, cName:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    const-string v3, "launchSource"

    const-string v4, "Samsung"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 71
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 72
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    invoke-static {}, Lcom/android/settings_ex/FeatureSettingsSetupWizard;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AT&T Locker not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettingsSetupWizard$1;->this$0:Lcom/android/settings_ex/FeatureSettingsSetupWizard;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method
