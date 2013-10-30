.class Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;
.super Ljava/lang/Object;
.source "SimeSwiftkeySettingsLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->onBindView(Landroid/view/View;)V
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
    .line 128
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->parent:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 132
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "first_swiftkey_download_execution"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    .local v0, mIsCheckDontShowDownloadGuide:Z
    const-string v3, "swiftkey_download_execution"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    .local v1, mIsUpdateDownloadGuide:Z
    if-eqz v0, :cond_1

    .line 139
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->showDownloadGuideDialog()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-eqz v1, :cond_0

    .line 144
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    #calls: Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->downloadlanguagepack()V
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;->access$300(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;)V

    goto :goto_0
.end method
