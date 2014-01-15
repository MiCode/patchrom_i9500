.class Lcom/android/settings_ex/wfd/WfdPickerActivity$12;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 1880
    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1883
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v2, 0x2

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3300(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V

    .line 1884
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->changeToScan()V

    .line 1886
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1890
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1892
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1893
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1895
    return-void
.end method
