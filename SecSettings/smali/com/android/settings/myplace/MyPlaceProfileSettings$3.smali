.class Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 528
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 529
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    .line 530
    .local v2, selected:I
    const-string v3, "MyPlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click ok on Select method dialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-nez v2, :cond_0

    .line 532
    const-string v3, "MyPlaceSettings"

    const-string v4, "wifi is clicked. start wifi network picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3, v1, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 544
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 535
    :cond_0
    if-ne v2, v6, :cond_1

    .line 536
    const-string v3, "MyPlaceSettings"

    const-string v4, "bt is clicked. start bt device picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 540
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 541
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 542
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    goto :goto_0
.end method
