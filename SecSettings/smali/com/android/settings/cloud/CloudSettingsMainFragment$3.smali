.class Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    const v2, 0x7f0910e3

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 984
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V
    invoke-static {v0}, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;)V

    goto :goto_0
.end method
