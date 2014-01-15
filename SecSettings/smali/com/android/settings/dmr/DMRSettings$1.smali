.class Lcom/android/settings_ex/dmr/DMRSettings$1;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dmr/DMRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dmr/DMRSettings;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    .line 837
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-static {p2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 838
    const-string v1, "Settings"

    const-string v2, "ServiceConnection"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iget-object v1, v1, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v1, :cond_0

    .line 841
    const-string v1, "Settings"

    const-string v2, "mIMediaServer == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 848
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 851
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    #calls: Lcom/android/settings_ex/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/dmr/DMRSettings;->access$100(Lcom/android/settings_ex/dmr/DMRSettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 853
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #calls: Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreferenceValues()V
    invoke-static {v1}, Lcom/android/settings_ex/dmr/DMRSettings;->access$200(Lcom/android/settings_ex/dmr/DMRSettings;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings$1;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 862
    return-void
.end method
