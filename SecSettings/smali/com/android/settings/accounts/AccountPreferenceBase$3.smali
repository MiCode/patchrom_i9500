.class Lcom/android/settings_ex/accounts/AccountPreferenceBase$3;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addSamsungRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings_ex/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, mIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.ManualRestoreActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase$3;->this$0:Lcom/android/settings_ex/accounts/AccountPreferenceBase;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    const/4 v1, 0x0

    return v1
.end method
