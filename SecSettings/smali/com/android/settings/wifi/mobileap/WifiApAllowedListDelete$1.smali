.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 110
    .local v1, isChecked:Z
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_0
    move v3, v5

    .line 110
    goto :goto_0

    .restart local v0       #i:I
    :cond_1
    move v3, v5

    .line 112
    goto :goto_2

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->updateList()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)V

    .line 115
    return-void
.end method
