.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 152
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v1, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;I)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090394

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
