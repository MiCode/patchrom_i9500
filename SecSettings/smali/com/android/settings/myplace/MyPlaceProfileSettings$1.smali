.class Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;
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
    .line 482
    iput-object p1, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 484
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 485
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    .line 486
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

    .line 487
    if-nez v2, :cond_3

    .line 488
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0911d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 512
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string v3, "MyPlaceSettings"

    const-string v4, "map is clicked. start mapview"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.myplace.SELECT_MAP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v3

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v4

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    :cond_1
    const-string v3, "location"

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v4

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :cond_2
    const-string v3, "map_latitude"

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v4

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v3, "map_longtitude"

    iget-object v4, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v4

    #getter for: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v4}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 499
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    if-ne v2, v6, :cond_4

    .line 500
    const-string v3, "MyPlaceSettings"

    const-string v4, "wifi is clicked. start wifi network picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3, v1, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 503
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    if-ne v2, v7, :cond_5

    .line 504
    const-string v3, "MyPlaceSettings"

    const-string v4, "bt is clicked. start bt device picker"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3, v1, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 508
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 509
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 510
    iget-object v3, p0, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v3}, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
