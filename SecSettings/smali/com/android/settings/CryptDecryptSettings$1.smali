.class Lcom/android/settings_ex/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptDecryptSettings;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 89
    const-string v12, "level"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 90
    .local v3, level:I
    const-string v12, "plugged"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, plugged:I
    const-string v12, "invalid_charger"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, invalidCharger:I
    const/16 v12, 0x50

    if-lt v3, v12, :cond_2

    move v4, v9

    .line 95
    .local v4, levelOk:Z
    :goto_0
    and-int/lit8 v12, v5, 0x7

    if-eqz v12, :cond_3

    if-nez v2, :cond_3

    move v6, v9

    .line 99
    .local v6, pluggedOk:Z
    :goto_1
    iget-object v12, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v12}, Lcom/android/settings_ex/CryptDecryptSettings;->access$000(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v8

    .line 101
    .local v8, status:I
    if-gt v9, v8, :cond_0

    const/4 v12, 0x3

    if-ge v12, v8, :cond_4

    :cond_0
    move v7, v9

    .line 104
    .local v7, sdCardOK:Z
    :goto_2
    iget-object v12, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings_ex/CryptDecryptSettings;->access$100(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v12

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$200(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v6, :cond_6

    move v9, v11

    :goto_4
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$300(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v4, :cond_7

    move v9, v11

    :goto_5
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$400(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_8

    move v9, v11

    :goto_6
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$500(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 113
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 115
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$500(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #invalidCharger:I
    .end local v3           #level:I
    .end local v4           #levelOk:Z
    .end local v5           #plugged:I
    .end local v6           #pluggedOk:Z
    .end local v7           #sdCardOK:Z
    .end local v8           #status:I
    :cond_1
    :goto_7
    return-void

    .restart local v2       #invalidCharger:I
    .restart local v3       #level:I
    .restart local v5       #plugged:I
    :cond_2
    move v4, v10

    .line 94
    goto :goto_0

    .restart local v4       #levelOk:Z
    :cond_3
    move v6, v10

    .line 95
    goto :goto_1

    .restart local v6       #pluggedOk:Z
    .restart local v8       #status:I
    :cond_4
    move v7, v10

    .line 101
    goto :goto_2

    .restart local v7       #sdCardOK:Z
    :cond_5
    move v9, v10

    .line 104
    goto :goto_3

    :cond_6
    move v9, v10

    .line 105
    goto :goto_4

    :cond_7
    move v9, v10

    .line 106
    goto :goto_5

    :cond_8
    move v9, v10

    .line 107
    goto :goto_6

    .line 117
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/CryptDecryptSettings$1;->this$0:Lcom/android/settings_ex/CryptDecryptSettings;

    #getter for: Lcom/android/settings_ex/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings_ex/CryptDecryptSettings;->access$100(Lcom/android/settings_ex/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f090a8b

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7
.end method
