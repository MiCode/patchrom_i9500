.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->showListUpdateGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "di"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mIsCheckboxDontShowDownloadList:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "first_swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 293
    :goto_0
    const-string v2, "swiftkey_download_list_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    return-void

    .line 291
    :cond_0
    const-string v2, "first_swiftkey_download_list_execution"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
