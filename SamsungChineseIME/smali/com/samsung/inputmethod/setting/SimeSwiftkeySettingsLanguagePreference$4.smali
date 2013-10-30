.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->showDownloadGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "di"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 380
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 381
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->mIsCheckboxDontShowDownload:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$600(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "first_swiftkey_download_execution"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    :goto_0
    const-string v2, "swiftkey_download_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadlanguagepack()V
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$300(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    .line 392
    return-void

    .line 385
    :cond_0
    const-string v2, "first_swiftkey_download_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
