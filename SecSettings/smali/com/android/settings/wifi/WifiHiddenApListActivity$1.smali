.class Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;
.super Ljava/lang/Object;
.source "WifiHiddenApListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 171
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$000(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, ssid:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$100(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$200(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090f82

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    .end local v0           #ssid:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 179
    .restart local v0       #ssid:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$100(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$300(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    #calls: Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->saveFile()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->access$400(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->updateMenu()V

    .line 183
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->updateHiddenAccessPoint()V

    goto :goto_0
.end method
