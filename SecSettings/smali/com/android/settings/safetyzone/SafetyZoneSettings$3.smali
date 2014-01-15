.class Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;
.super Ljava/lang/Object;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$500(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_zone_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, safety_zone_list:Ljava/lang/String;
    const-string v0, ""

    .line 343
    .local v0, combinedString:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";and;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #getter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$200(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/and/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #getter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$400(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ssid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/and/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #getter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$400(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "bssid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/and/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #getter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$400(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "frequency"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$600(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_zone_list"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #calls: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->updateAccessPointList()Z
    invoke-static {v2}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$300(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Z

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    iput-object v6, v2, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #setter for: Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;
    invoke-static {v2, v6}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$402(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;Landroid/content/Intent;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$3;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    const v4, 0x7f090af5

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    return-void
.end method
