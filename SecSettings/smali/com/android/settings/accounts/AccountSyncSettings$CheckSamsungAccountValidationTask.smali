.class Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;
.super Landroid/os/AsyncTask;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSamsungAccountValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_SAMSUNG_ACCOUNT_VALIDATION:Ljava/lang/String; = "com.msc.action.VALIDATION_CHECK_RESPONSE"


# instance fields
.field private mIntentToStartActivity:Landroid/content/Intent;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

.field private mValidationStatus:I

.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 732
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    .line 738
    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    .line 740
    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 742
    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;Lcom/android/settings_ex/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 732
    iput p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    return-object p1
.end method

.method private registerSamsungAccountReceiver()V
    .locals 3

    .prologue
    .line 854
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 855
    new-instance v2, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;)V

    iput-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 923
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 924
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 926
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 929
    :cond_1
    return-void
.end method

.method private unregisterSamsungAccountReceiver()V
    .locals 2

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 933
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 935
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 937
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .parameter "arg0"

    .prologue
    const/4 v13, 0x0

    .line 760
    iget-object v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 761
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "s5d189ajvs"

    .line 762
    .local v1, clientId:Ljava/lang/String;
    const-string v2, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 763
    .local v2, clientSecret:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 764
    .local v9, packageName:Ljava/lang/String;
    :goto_0
    const-string v8, "OSP_02"

    .line 765
    .local v8, ospVersion:Ljava/lang/String;
    const-string v7, "VALIDATION_CHECK"

    .line 768
    .local v7, mode:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->registerSamsungAccountReceiver()V

    .line 771
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v6, intentToRequest:Landroid/content/Intent;
    const-string v11, "client_id"

    const-string v12, "s5d189ajvs"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v11, "client_secret"

    const-string v12, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v11, "mypackage"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v11, "OSP_VER"

    const-string v12, "OSP_02"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v11, "MODE"

    const-string v12, "VALIDATION_CHECK"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 782
    :cond_0
    const/4 v3, 0x0

    .line 783
    .local v3, count:I
    :goto_1
    iget v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 785
    const/16 v11, 0x3c

    if-le v3, v11, :cond_4

    .line 786
    :try_start_0
    const-string v11, "AccountSettings"

    const-string v12, "no response from Samsung account"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->unregisterSamsungAccountReceiver()V

    .line 801
    if-eqz v0, :cond_2

    .line 802
    const-string v11, "SamsungAccount"

    invoke-virtual {v0, v11, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 803
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 804
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "validation_status"

    iget v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 805
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 808
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget v11, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    if-nez v11, :cond_5

    .line 809
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 811
    :goto_2
    return-object v11

    .line 763
    .end local v3           #count:I
    .end local v6           #intentToRequest:Landroid/content/Intent;
    .end local v7           #mode:Ljava/lang/String;
    .end local v8           #ospVersion:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.settings_ex"

    goto :goto_0

    .line 790
    .restart local v3       #count:I
    .restart local v6       #intentToRequest:Landroid/content/Intent;
    .restart local v7       #mode:Ljava/lang/String;
    .restart local v8       #ospVersion:Ljava/lang/String;
    .restart local v9       #packageName:Ljava/lang/String;
    :cond_4
    const-wide/16 v11, 0x3e8

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 792
    :catch_0
    move-exception v4

    .line 793
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 811
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 732
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->unregisterSamsungAccountReceiver()V

    .line 850
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 851
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "validated"

    .prologue
    .line 817
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 820
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 822
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 825
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 826
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 832
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 845
    :cond_1
    :goto_1
    return-void

    .line 829
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    const v3, 0x7f0908a4

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 836
    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 839
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 840
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 841
    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 732
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 746
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 752
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    const v2, 0x7f0908a3

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 756
    return-void
.end method
