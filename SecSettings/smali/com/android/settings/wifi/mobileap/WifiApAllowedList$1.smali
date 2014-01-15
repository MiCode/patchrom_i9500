.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$1;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdapterView is selected, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$002(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;I)V

    .line 132
    return-void
.end method
