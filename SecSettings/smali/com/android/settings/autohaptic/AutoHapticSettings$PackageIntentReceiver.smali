.class Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 625
    iput-object p2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->mContext:Landroid/content/Context;

    .line 626
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 642
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, actionStr:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #getter for: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$000(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 646
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;>;"
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 648
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$100(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 649
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    const/4 v7, 0x4

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$200(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    .line 666
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v2

    .line 653
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->initAppList()V
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$300(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v7}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    throw v6

    .line 657
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 658
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 659
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    .line 660
    .local v1, app:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
    iget-object v6, v1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 664
    .end local v1           #app:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings_ex/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    goto :goto_0
.end method

.method registerReceiver()V
    .locals 2

    .prologue
    .line 629
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    return-void
.end method
