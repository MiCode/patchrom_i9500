.class Lcom/android/settings_ex/nearby/NearbySettings$8;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbySettings;->requestWelcomePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;

.field final synthetic val$welcomeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$8;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    iput-object p2, p0, Lcom/android/settings_ex/nearby/NearbySettings$8;->val$welcomeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 889
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings$8;->val$welcomeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings$8;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 893
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 894
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "allshare_welcome_popup"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 895
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 896
    const-string v2, "AllshareSetting: "

    const-string v3, "requestWelcomePopup"

    const-string v4, "CLICK: Do not show again"

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string v2, "AllshareSetting: "

    const-string v3, "requestWelcomePopup"

    const-string v4, "CLICK: show again next time"

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
